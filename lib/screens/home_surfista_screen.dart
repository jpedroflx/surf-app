import 'package:flutter/material.dart';

class HomeSurfistaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surfista Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo, Surfista!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de cadastro de prancha
                Navigator.pushNamed(context, '/boardRegistration');
              },
              child: Text('Cadastrar Prancha'),
            ),
          ],
        ),
      ),
    );
  }
}
