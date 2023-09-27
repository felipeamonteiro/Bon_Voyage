import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';

class Planos extends StatefulWidget {
  const Planos({super.key});

  @override
  State<Planos> createState() => _PlanosState();
}

class _PlanosState extends State<Planos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        '< Back',
                        style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 330,
                height: 400,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF474749),
                        blurRadius: 4,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF8AACDE),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Classe Média',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Personalização',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        '6 Pacotes',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Guia Turístico',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Assistência parcial da Vox',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      DefaultButton(
                        buttonText: 'Saiba Mais',
                        colorButton: btnColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                height: 500,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF474749),
                        blurRadius: 4,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF2868B4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Recomendado',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Personalização + assistência completa da Vox',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Pacotes Ilimitados',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Guia Turístico de Elite',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Ingressos para Eventos',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Ofertas especiais em passeios e atividades',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'R\$ 500,00',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                        buttonText: 'Saiba Mais',
                        colorButton: btnColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                height: 400,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF474749),
                        blurRadius: 4,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF99C3F4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Pobre',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Personalização',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Alguma Vantagem',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        '3 Pacotes',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Guia Turístico',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Assistência parcial da Vox',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                        buttonText: 'Saiba Mais',
                        colorButton: btnColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
