import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/About%20Us/about_us.dart';
import 'package:bon_voyage/views/Registro%20Firebase/Cadastro/cadastro.dart';
import 'package:bon_voyage/views/Contact/contact.dart';
import 'package:bon_voyage/views/Customization/explanation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
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
                ),
              ],
            ),
            const Text(
              'Apresentação da Marca',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            DefaultButton(
              buttonText: 'Saiba Mais',
              colorButton: btnColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nossos Serviços',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Serviço básico',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Serviço intermediário',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Serviço avançado',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 520,
              decoration: const BoxDecoration(color: Color(0xFF205ADC)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sobre a \npersonalização.',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Oferecemos uma viagem feita sob medida para você com nossa proposta de personalização da sua viagem. Aqui, a sua aventura começa com suas escolhas, suas preferências e o seu estilo. Nós acreditamos que cada viajante é único, e é por isso que oferecemos uma experiência totalmente customizável que se adapta aos seus desejos e orçamento.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: DefaultButton(
                          colorButton: Colors.white54,
                          buttonText: 'Saiba Mais',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Explanation()));
                          },
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/Contact us-amico.png',
              width: 350,
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fale conosco',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Estamos aqui para tornar a sua experiência a melhor possível. Se você estiver enfrentando algum problema, tiver dúvidas ou precisa de assistência, nossa equipe de suporte está pronta para atender você e lhe oferecer a solução ideal.',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: DefaultButton(
                        colorButton: btnColor,
                        buttonText: 'Entre em Contato',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactUs()));
                        },
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButton(
                    colorButton: btnColor,
                    buttonText: 'Registrar',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cadastro()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
