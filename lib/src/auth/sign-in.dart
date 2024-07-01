// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:instagram/src/auth/home.dart';
import 'package:instagram/src/components/text-filed.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 40,
          ),
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: 200,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
                  width: 100,
                  // color: Colors.yellow,
                  child: Image.asset(
                    'assets/instagramLogo.png',
                  ),
                )),

            // TextFields mark
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormFieldComponent(
                      label: 'Telefone, nome de usuário ou email',
                      validator: (
                        email,
                      ) {
                        if (email == null || email.isEmpty) {
                          return 'Por favor, informe seu email';
                        }

                        if (!email.isEmail) {
                          return 'Digite um email válido';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormFieldComponent(
                      label: 'Senha',
                      obscureText: true,
                      validator: (
                        senha,
                      ) {
                        if (senha == null || senha.isEmpty) {
                          return 'Por favor, informe sua senha';
                        }

                        if (senha.length < 6) {
                          return 'Sua senha deve conter pelo menos 6 caracteres';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Forgot password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Color(0xFF0096f9),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),

            // Enter button
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFF0096f9),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white, // Cor do texto
                      fontSize: 16, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Peso da fonte
                    ),
                  ),
                ),
              ),
            ),

            // Divider
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.withAlpha(100),
                      thickness: 2,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Text('ou'),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.withAlpha(100),
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),

            // Continue with Facebook
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: TextButton.icon(
                  icon: const Icon(Icons.facebook,
                      color: Color(0xFF0096f9), size: 24),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  label: const Text(
                    'Continuar com o Facebook',
                    style: TextStyle(
                      color: Color(0xFF0096f9), // Cor do texto
                      fontSize: 16, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Peso da fonte
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
