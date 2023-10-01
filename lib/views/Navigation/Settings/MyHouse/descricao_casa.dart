import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/tipo_reserva.dart';
import 'package:flutter/material.dart';

class DescricaoCasa extends StatefulWidget {
  const DescricaoCasa({super.key});

  @override
  State<DescricaoCasa> createState() => _DescricaoCasaState();
}

class _DescricaoCasaState extends State<DescricaoCasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              const Text(
                'Adicione uma descrição para seu espaço',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                maxLines: 10,
                maxLength: 1000,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 350,
              ),
              DefaultButton(
                buttonText: 'Avançar',
                colorButton: btnColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TipoReserva()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
