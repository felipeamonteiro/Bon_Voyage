import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Info/About_Us/about_us.dart';
import 'package:bon_voyage/views/Info/Contact/contact.dart';
import 'package:bon_voyage/views/Navigation/Settings/MyHouse/cadastro_casa.dart';
import 'package:bon_voyage/views/Navigation/Settings/Profile/profile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String dropdownValue = 'Claro';
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
            child: Text(
              'Configurações',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // const Buttons(),
          const SizedBox(
            height: 50,
          ),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          SettingsItems(
              iconSettingsItem: Icons.account_circle,
              textSettingsItem: 'Gerenciar Conta',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              sizedBox: 130),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.dark_mode_outlined,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Alterar Tema',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 150,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.menu),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Claro',
                      child: Text('Claro'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Escuro',
                      child: Text('Escuro'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Sistema',
                      child: Text('Sistema'),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          SettingsItems(
              iconSettingsItem: Icons.business,
              textSettingsItem: 'Sobre Nós',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const AboutUs())));
              },
              sizedBox: 180),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          SettingsItems(
              iconSettingsItem: Icons.chat,
              textSettingsItem: 'Contato',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactUs()));
              },
              sizedBox: 200),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          SettingsItems(
              iconSettingsItem: Icons.home_filled,
              textSettingsItem: 'Minhas Casas',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CadastroCasas()));
              },
              sizedBox: 150),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DefaultTextButton(
                textButtonText: 'Termos de Uso',
                fontSize: 16,
                onPressed: () {},
              ),
              DefaultTextButton(
                textButtonText: 'Politicas de Privacidade',
                fontSize: 16,
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    ));
  }
}
