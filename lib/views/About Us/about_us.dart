import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Logo_Escura.png',
                width: 250,
              ),
              Image.asset(
                'assets/images/About us.png',
                width: 350,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  children: [
                    const Text(
                      'Conheça um pouco mais sobre a Bon Voyage, e saiba como podemos fazer ter uma experiência única em suas viagens.',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          color: const Color(0xFF99C3F4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFF4E9FFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                Image.asset('assets/images/missoes.png'),
                                const SizedBox(
                                  width: 65,
                                ),
                                const Text(
                                  'Missão',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 40),
                            child: Text(
                              'Garantir a satisfação do cliente e superar suas expectativas, fornecendo o melhor e confiável serviço.',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          color: const Color(0xFF99C3F4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFF4E9FFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                Image.asset('assets/images/visao.png'),
                                const SizedBox(
                                  width: 75,
                                ),
                                const Text(
                                  'Visão',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 30),
                            child: Text(
                              'Liderar um projeto inovador  e ser conhecido como uma referência em guia, qualidade e inovação, sempre oferecendo o melhor ao cliente.',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          color: const Color(0xFF99C3F4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFF4E9FFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                Image.asset('assets/images/valores.png'),
                                const SizedBox(
                                  width: 60,
                                ),
                                const Text(
                                  'Valores',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 50),
                            child: Text(
                              'Ética, respeito, confiança, humildade, integridade, colaboração e valorização.',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }
}
