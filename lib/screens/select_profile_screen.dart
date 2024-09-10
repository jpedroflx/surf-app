import 'package:flutter/material.dart';

class SelectProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecione o Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Escolha seu perfil:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Redirecionar para tela do Coach
                Navigator.pushNamed(context, '/homeCoach');
              },
              child: Text('Coach'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Redirecionar para tela do Surfista
                Navigator.pushNamed(context, '/homeSurfista');
              },
              child: Text('Surfista'),
            ),
          ],
        ),
      ),
    );
  }
}
