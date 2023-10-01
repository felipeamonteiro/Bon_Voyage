import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/foto_casa.dart';
import 'package:flutter/material.dart';

class DetalheCasa extends StatefulWidget {
  const DetalheCasa({super.key});

  @override
  State<DetalheCasa> createState() => _DetalheCasaState();
}

class _DetalheCasaState extends State<DetalheCasa> {
  int hospedes = 0;
  int camas = 0;
  int banheiros = 0;

  void incrementHospedes() {
    setState(() {
      if (hospedes < 15) {
        hospedes++;
      }
    });
  }

  void decrementHospedes() {
    setState(() {
      if (hospedes > 0) {
        hospedes--;
      }
    });
  }

  void incrementCamas() {
    setState(() {
      if (camas < 15) {
        camas++;
      }
    });
  }

  void decrementCamas() {
    setState(() {
      if (camas > 0) {
        camas--;
      }
    });
  }

  void incrementBanheiros() {
    setState(() {
      if (banheiros < 6) {
        banheiros++;
      }
    });
  }

  void decrementBanheiros() {
    setState(() {
      if (banheiros > 0) {
        banheiros--;
      }
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
                'Compartilhe os detalhes do seu espaço',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  const Text(
                    'Hóspedes:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(width: 100),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: decrementHospedes,
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                  Text(
                    '$hospedes',
                    style: const TextStyle(fontSize: 20),
                  ),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: incrementHospedes,
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black54,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Camas:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(width: 124),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: decrementCamas,
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                  Text(
                    '$camas',
                    style: const TextStyle(fontSize: 20),
                  ),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: incrementCamas,
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black54,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Banheiros:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(width: 100),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: decrementBanheiros,
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                  Text(
                    '$banheiros',
                    style: const TextStyle(fontSize: 20),
                  ),
                  MaterialButton(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black45, width: 2)),
                    color: const Color(0xB9FFFFFF),
                    onPressed: incrementBanheiros,
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black54,
              ),
              const SizedBox(
                height: 340,
              ),
              DefaultButton(
                buttonText: 'Avançar',
                colorButton: btnColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FotoCasa()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}