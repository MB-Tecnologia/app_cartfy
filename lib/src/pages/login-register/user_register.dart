import 'package:flutter/material.dart';

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.red),
            onPressed: () {
              // Ação do botão de ajuda (pode exibir um dialog ou snackbar, por exemplo)
            },
          ),
        ],
        title: const Text(
          "Cadastro",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // E-mail
              _buildInput("Qual o seu e-mail?"),
              const SizedBox(height: 15),

              // Nome
              _buildInput("Nome"),
              const SizedBox(height: 15),

              // Número
              _buildInput("Número"),
              const SizedBox(height: 15),

              // CPF
              _buildInput("CPF"),
              const SizedBox(height: 15),

              // Endereço e Número (lado a lado)
              Row(
                children: [
                  Expanded(child: _buildInput("Endereço")),
                  const SizedBox(width: 10),
                  SizedBox(width: 100, child: _buildInput("Número")),
                ],
              ),
              const SizedBox(height: 30),

              // botao continuar
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {
                  },
                  child: const Text(
                    "Continuar",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInput(String label) {
    return TextField(
      decoration: InputDecoration(
        hintText: label,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
