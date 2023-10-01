import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/detalhes_casa.dart';
import 'package:flutter/material.dart';

class Endereco extends StatefulWidget {
  const Endereco({super.key});

  @override
  State<Endereco> createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              const Text(
                'Confirme seu endereço',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Endereço é compartilhado após a  confirmação da reserva',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Estado * ',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Endereço *',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Complemento',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Bairro *',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Cidade *',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
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
