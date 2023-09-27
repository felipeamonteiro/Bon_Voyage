import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/explicacao_casas.dart';
import 'package:flutter/material.dart';

class CadastroCasas extends StatefulWidget {
  const CadastroCasas({super.key});

  @override
  State<CadastroCasas> createState() => _CadastroCasasState();
}

class _CadastroCasasState extends State<CadastroCasas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Minhas Casas',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Divider(
                  color: Colors.black45,
                  height: 70,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                DefaultButton(
                  buttonText: 'Adicionar',
                  colorButton: btnColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExplicacaoCadastro()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Sair',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
