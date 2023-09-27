import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/tipo_casa.dart';
import 'package:flutter/material.dart';

class ExplicacaoCadastro extends StatefulWidget {
  const ExplicacaoCadastro({super.key});

  @override
  State<ExplicacaoCadastro> createState() => _ExplicacaoCadastroState();
}

class _ExplicacaoCadastroState extends State<ExplicacaoCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
        child: Column(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.black, width: 2)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Text(
                    'Sair',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Anuncie sua casa',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '1- Descreva o ambiente',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Compartilhe algumas informações básicas, como a localização e quantos hóspedes podem ficar no local.',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Colors.black54,
              height: 3,
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '2- Faça com que se destaque',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Adicione cinco fotos ou mais, além de um título e uma descrição. Nós ajudaremos você.',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Colors.black54,
              height: 3,
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '3- Concluir e publicar',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Escolha se você gostaria de começar com um hóspede experiente, defina um preço inicial e publique seu anúncio.',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            DefaultButton(
              buttonText: 'Avançar',
              colorButton: btnColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TipoCasa()));
              },
            )
          ],
        ),
      ),
    );
  }
}
