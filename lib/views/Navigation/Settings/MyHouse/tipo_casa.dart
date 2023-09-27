import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/detalhes_casa.dart';
import 'package:flutter/material.dart';

class TipoCasa extends StatefulWidget {
  const TipoCasa({super.key});

  @override
  State<TipoCasa> createState() => _TipoCasaState();
}

class _TipoCasaState extends State<TipoCasa> {
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRadioButton(
                    index: 0,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Casa',
                    icon: const Icon(Icons.home),
                  ),
                  CustomRadioButton(
                    index: 1,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Apartamento',
                    icon: const Icon(Icons.business),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRadioButton(
                    index: 2,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Pousada',
                    icon: const Icon(Icons.coffee),
                  ),
                  CustomRadioButton(
                    index: 3,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Cabana',
                    icon: const Icon(Icons.chalet),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRadioButton(
                    index: 4,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Gruta',
                    icon: const Icon(Icons.nature_people),
                  ),
                  CustomRadioButton(
                    index: 5,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Fazenda',
                    icon: const Icon(Icons.home),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRadioButton(
                    index: 6,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Barco',
                    icon: const Icon(Icons.waves),
                  ),
                  CustomRadioButton(
                    index: 7,
                    selectedIndex: selectedButton,
                    onChanged: setSelectedButton,
                    text: 'Trailer',
                    icon: const Icon(Icons.car_rental),
                  ),
                ],
              ),
              const SizedBox(
                height: 180,
              ),
              DefaultButton(
                buttonText: 'Avançar',
                colorButton: btnColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetalheCasa()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
