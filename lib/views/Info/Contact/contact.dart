import 'dart:convert';

import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  Future sendEmail ({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {

    const serviceId = 'service_x4qp1cw';
    const templateId = 'template_q6o8838';
    const userId = 'm955-QQtcoZI0Ohxy';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message
        }
      })
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Email enviado com sucesso'),
        duration: Duration(seconds: 3),
      )
    );
    debugPrint(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Logo_Escura.png',
                  width: 250,
                ),
                Image.asset(
                  'assets/images/Contact us-amico.png',
                  width: 250,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 80, right: 50),
                  child: Text(
                    'Em caso de duvidas ou feedback, entre em contato conosco. ',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Form(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
              width: double.infinity,
              height: 700,
              decoration: const BoxDecoration(
                color: Color(0xFF0041D4),
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: subjectController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Assunto:',
                        suffixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Seu Nome:',
                        suffixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Digite seu email:',
                        suffixIcon: const Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: messageController,
                    maxLines: 10,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Digite sua mensagem:',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButton(
                    buttonText: 'Enviar',
                    colorButton: btnColor,
                    onPressed: () {
                      sendEmail(
                        name: nameController.text,
                        email: emailController.text,
                        subject: subjectController.text,
                        message: messageController.text
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ou acesse direto pelo email bonvoyagepit@gmail.com',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar'),
          )
        ],
      ),
    ));
  }
}
