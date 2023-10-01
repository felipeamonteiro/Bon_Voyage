import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/descricao_casa.dart';
import 'package:flutter/material.dart';

class TituloCasa extends StatefulWidget {
  const TituloCasa({super.key});

  @override
  State<TituloCasa> createState() => _TituloCasaState();
}

class _TituloCasaState extends State<TituloCasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              const Text(
                'Agora adicione um título à sua comodação',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Títulos curtos funcionam melhor. Não se preocupe, você poderá fazer alterações depois.',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                maxLines: 4,
                maxLength: 32,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 360,
              ),
              DefaultButton(
                buttonText: 'Avançar',
                colorButton: btnColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DescricaoCasa()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
