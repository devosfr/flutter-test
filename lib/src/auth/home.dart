import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0; // Variável counter com estado interno

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
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Counter: $counter', // Exibe o valor do contador
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: const Text('Incrementar'),
                    ),
                  ],
                ),
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
