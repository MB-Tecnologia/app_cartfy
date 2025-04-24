import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({super.key});

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _ruaController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _cidadeEstadoController = TextEditingController();

  Future<void> _buscarEndereco() async {
    final cep = _cepController.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (cep.length != 8) return;

    final url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (!data.containsKey('erro')) {
        setState(() {
          _ruaController.text = data['logradouro'] ?? '';
          _bairroController.text = data['bairro'] ?? '';
          _cidadeEstadoController.text =
              '${data['localidade'] ?? ''} - ${data['uf'] ?? ''}';
        });
      }
    }
  }

  Widget _buildInput(String label, TextEditingController controller,
      {bool enabled = true}) {
    return TextField(
      controller: controller,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: label,
        filled: true,
        fillColor: enabled ? Colors.white : Colors.grey[200],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro", style: TextStyle(color: Colors.green)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.red),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildInput("E-mail", TextEditingController()),
              const SizedBox(height: 15),
              _buildInput("Nome", TextEditingController()),
              const SizedBox(height: 15),
              _buildInput("Telefone", TextEditingController()),
              const SizedBox(height: 15),
              _buildInput("CPF", TextEditingController()),
              const SizedBox(height: 15),

              // CEP com botão de busca
              Row(
                children: [
                  Expanded(child: _buildInput("CEP", _cepController)),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: _buscarEndereco,
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Rua
              _buildInput("Rua", _ruaController, enabled: false),
              const SizedBox(height: 15),

              // Bairro
              _buildInput("Bairro", _bairroController, enabled: false),
              const SizedBox(height: 15),

              // Cidade/Estado
              _buildInput("Cidade/Estado", _cidadeEstadoController, enabled: false),
              const SizedBox(height: 15),

              // Número (manual)
              _buildInput("Número", _numeroController),
              const SizedBox(height: 30),

              // Botão Continuar
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Continuar",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
