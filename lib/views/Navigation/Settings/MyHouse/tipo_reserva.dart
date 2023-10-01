import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';

class TipoReserva extends StatefulWidget {
  const TipoReserva({super.key});

  @override
  State<TipoReserva> createState() => _TipoReservaState();
}

class _TipoReservaState extends State<TipoReserva> {
  int selectedButton = -1;

  void setSelectedButton(int index) {
    setState(() {
      selectedButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: defaultPadding,
        child: Column(
          children: [
            const Text(
              'Escolha como será feita a reserva',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 80,
            ),
            CustomButton(
              index: 0,
              selectedIndex: selectedButton,
              onChanged: setSelectedButton,
              text1: 'Aprovar ou recusar pedidos',
              text2: 'Os hóspedes têm que consultar se é \npossivel reservar.',
              size: 40,
              icon: const Icon(
                Icons.chat,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              index: 1,
              selectedIndex: selectedButton,
              onChanged: setSelectedButton,
              text1: 'Usar reserva instantânea',
              size: 65,
              icon: const Icon(
                Icons.bolt,
                size: 40,
              ),
              text2: 'Os hóspedes podem fazer a reserva\n automaticamente',
            ),
            const SizedBox(height: 290,),
            DefaultButton(
              buttonText: 'Avançar',
              colorButton: btnColor,
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
