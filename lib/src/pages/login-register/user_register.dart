import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_cartfy/src/services/address_service.dart';// Ajuste para seu projeto
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart'; // Vamos usar uma lib para mascarar (opcional, facilita)

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({super.key});

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _ruaController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _cidadeEstadoController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _complementoController = TextEditingController();

  // Máscaras
  final telefoneFormatter = MaskTextInputFormatter(mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});
  final cpfFormatter = MaskTextInputFormatter(mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  Future<void> _buscarEndereco() async {
    final cep = _cepController.text;
    final address = await AddressService.fetchAddress(cep);

    if (address != null) {
      setState(() {
        _ruaController.text = address['rua'] ?? '';
        _bairroController.text = address['bairro'] ?? '';
        _cidadeEstadoController.text = address['cidadeEstado'] ?? '';
      });
    }
  }

  Widget _buildInput(String label, TextEditingController controller,
      {bool enabled = true, List<TextInputFormatter>? inputFormatters, TextInputType? keyboardType, String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: label,
        filled: true,
        fillColor: enabled ? Colors.white : Colors.grey[200],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(r'^[\w\.\-]+@([\w\-]+\.)+[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool _validateComplemento(String complemento) {
    final specialChars = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%]');
    return !specialChars.hasMatch(complemento);
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildInput(
                  "E-mail",
                  _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Campo obrigatório';
                    if (!_validateEmail(value)) return 'E-mail inválido';
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                _buildInput(
                  "Nome",
                  _nomeController,
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'))],
                  validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 15),
                _buildInput(
                  "Telefone",
                  _telefoneController,
                  inputFormatters: [telefoneFormatter],
                  keyboardType: TextInputType.phone,
                  validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 15),
                _buildInput(
                  "CPF",
                  _cpfController,
                  inputFormatters: [cpfFormatter],
                  keyboardType: TextInputType.number,
                  validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 15),

                // CEP com botão de busca
                Row(
                  children: [
                    Expanded(
                      child: _buildInput(
                        "CEP",
                        _cepController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
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

                // Número
                _buildInput(
                  "Número",
                  _numeroController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 15),

                // Complemento
                _buildInput(
                  "Complemento",
                  _complementoController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]'))
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) return null;
                    if (!_validateComplemento(value)) return 'Use apenas letras, números e espaços';
                    return null;
                  },
                ),
                const SizedBox(height: 30),

                // Botão Continuar
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Se todos os campos estão validados
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Dados válidos!')),
                        );
                      }
                    },
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
      ),
    );
  }
}
