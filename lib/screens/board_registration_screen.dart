import 'package:flutter/material.dart';

class BoardRegistrationScreen extends StatefulWidget {
  @override
  _BoardRegistrationScreenState createState() => _BoardRegistrationScreenState();
}

class _BoardRegistrationScreenState extends State<BoardRegistrationScreen> {
  // Controladores de texto para os campos de entrada
  final TextEditingController _manufacturerController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _volumeController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _thicknessController = TextEditingController();
  final TextEditingController _finSetupController = TextEditingController();
  final TextEditingController _tailShapeController = TextEditingController();

  @override
  void dispose() {
    // Limpar controladores de texto ao sair
    _manufacturerController.dispose();
    _modelController.dispose();
    _volumeController.dispose();
    _lengthController.dispose();
    _widthController.dispose();
    _thicknessController.dispose();
    _finSetupController.dispose();
    _tailShapeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Prancha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _manufacturerController,
                decoration: InputDecoration(labelText: 'Fabricante'),
              ),
              TextField(
                controller: _modelController,
                decoration: InputDecoration(labelText: 'Modelo'),
              ),
              TextField(
                controller: _volumeController,
                decoration: InputDecoration(labelText: 'Volume (litros)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _lengthController,
                decoration: InputDecoration(labelText: 'Comprimento (cm)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _widthController,
                decoration: InputDecoration(labelText: 'Largura (cm)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _thicknessController,
                decoration: InputDecoration(labelText: 'Espessura (cm)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _finSetupController,
                decoration: InputDecoration(labelText: 'Configuração de Quilhas (# Quilhas)'),
              ),
              TextField(
                controller: _tailShapeController,
                decoration: InputDecoration(labelText: 'Formato da Rabeta'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para salvar ou processar os dados
                  // Neste exemplo, vamos apenas exibir uma mensagem de sucesso
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sucesso"),
                        content: Text("Prancha cadastrada com sucesso!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text('Cadastrar Prancha'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
