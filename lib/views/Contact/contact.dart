import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                  'assets/images/Logo Bon Voyage.png',
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
                    height: 50,
                  ),
                  TextFormField(
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
                    height: 50,
                  ),
                  TextFormField(
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
                    height: 50,
                  ),
                  DefalutButton(
                    buttonText: 'Enviar',
                    colorButton: btnColor,
                    onPressed: () {},
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
