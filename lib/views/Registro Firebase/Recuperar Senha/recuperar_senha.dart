import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Registro%20Firebase/Login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({super.key});

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  final _emailController = TextEditingController();

  Future<void> _resetPassowrd(context) async {
    final String email = _emailController.text.trim();

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LogIn()));
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Confira seu e-mail para recuperar sua senha')));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Erro ao enviar e-mail $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Forgot password-amico.png',
                    width: 300.0,
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  const Text(
                    'Esqueceu sua Senha?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Informe seu endereço de email e enviaremos um link para você redefinir a senha:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFFA5ACBB),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  DefaultButton(
                    buttonText: 'Enviar',
                    colorButton: btnColor,
                    onPressed: () {
                      _resetPassowrd(context);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'VOLTAR AO LOGIN',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
