import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';

class Passagens extends StatefulWidget {
  const Passagens({super.key});

  @override
  State<Passagens> createState() => _PassagensState();
}

class _PassagensState extends State<Passagens> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(40, 16, 40, 20),
            child: Column(
              children: [
                ContainerPassagens(
                  image: 'assets/images/gramados.jpg',
                  localViagem: 'Gramados',
                  precoPassagem: 'R\$ 189,99',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/rio.jpg',
                  localViagem: 'Rio de Janeiro',
                  precoPassagem: 'R\$ 99,39',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/sao_paulo.jpg',
                  localViagem: 'São Paulo',
                  precoPassagem: 'R\$ 89,99',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/salvador.jpg',
                  localViagem: 'Salvador',
                  precoPassagem: 'R\$ 139,99',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/porto_alegre.webp',
                  localViagem: 'Porto Alegre',
                  precoPassagem: 'R\$ 189,79',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/guarapari.jpg',
                  localViagem: 'Guarapari',
                  precoPassagem: 'R\$ 249,59',
                ),
                SizedBox(height: 40,),
                ContainerPassagens(
                  image: 'assets/images/bh.jpg',
                  localViagem: 'Belo Horizonte',
                  precoPassagem: 'R\$ 59,89',
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
