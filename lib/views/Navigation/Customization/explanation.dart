import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';

class Explanation extends StatefulWidget {
  const Explanation({super.key});

  @override
  State<Explanation> createState() => _ExplanationState();
}

class _ExplanationState extends State<Explanation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF162F4D),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
                width: double.infinity,
                height: 200,
                child: const Text(
                  'Como funciona a personalização',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/personalizacao.png'),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  Text(
                    'Embarque em uma jornada única!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Oferecemos uma viagem feita sob medida para você com nossos pacotes de viagem personalizados. Aqui, a sua aventura começa com suas escolhas, suas preferências e o seu estilo. Nós acreditamos que cada viajante é único, e é por isso que oferecemos uma experiência totalmente customizável que se adapta aos seus desejos e orçamento.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/cartaz.png'),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Com as suas escolhas em mente, você pode montar o pacote de viagem dos seus sonhos. Selecione sua passagem, escolha seu hotel e adicione quaisquer atividades ou eventos que chamem a sua atenção. Nossa ferramenta de personalização torna o processo fácil e intuitivo. Nós entendemos que cada viagem é uma oportunidade única para criar memórias inesquecíveis. É por isso que acreditamos em colocar você no controle, permitindo que você crie uma experiência que reflita o seu gosto e estilo pessoal.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            DefaultButton(
              buttonText: 'Faça sua Viajem',
              colorButton: btnColor,
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
