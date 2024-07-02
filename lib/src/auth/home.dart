import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.camera_alt),
        title: Image.asset(
          'assets/instagramLogo.png', // Caminho da imagem no seu projeto
          height: 40, // Altura desejada da imagem
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Ação quando clicar no ícone de mensagem
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white, // Cor de fundo do corpo da página
        child: Column(
          children: [
            // Aqui você pode adicionar os widgets que representam o conteúdo da página
            Expanded(
              child: Container(
                color: Colors.blue,
                // Widget para exibir o feed de postagens
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                // Widget para exibir a seção de histórias
              ),
            ),
          ],
        ),
      ),
    );
  }
}
