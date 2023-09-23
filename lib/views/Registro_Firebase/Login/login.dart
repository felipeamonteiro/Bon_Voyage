import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Registro_Firebase/Cadastro/cadastro.dart';
import 'package:bon_voyage/views/Navigation/bottom_bar.dart';
import 'package:bon_voyage/views/Registro_Firebase/Recuperar_Senha/recuperar_senha.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bon_voyage/components/auth_repository.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    User? user = await _authService.signInWithEmailAndPassword(email, password);
    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBar()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      return const BottomNavBar();
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Logo_Escura.png',
                      width: 250,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'E-mail',
                            suffixIcon: const Icon(
                              Icons.mail_rounded,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Senha',
                            suffixIcon:
                                const Icon(Icons.remove_red_eye_outlined)),
                      ),
                      Row(
                        children: [
                          DefaultTextButton(
                            textButtonText: 'Esqueceu a Senha?',
                            fontSize: 14,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RecuperarSenha()));
                            },
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DefaultButton(
                            buttonText: 'Entrar',
                            colorButton: btnColor,
                            onPressed: () {
                              _login();
                            },
                          ),
                          DefaultTextButton(
                            textButtonText: 'Cadastrar-se',
                            fontSize: 18,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Cadastro()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 210),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Termos | Privacidade',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
}
