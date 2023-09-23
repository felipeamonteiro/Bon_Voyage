import 'package:flutter/material.dart';

const String apiKey = 'AIzaSyDDd4BZ8waWzBTYdZd5pr2MBu2DnmK0Wv4';
const String apiPassagensJson =
    'https://raw.githubusercontent.com/LuizLimaG/APIPassagens/main/app.json';

const Color btnColor = Color(0xFF4A7FCD);
const Color bgColor = Color(0xFFD7E4F4);
const Color linkColor = Color(0xFF4E9FFF);
const Color headerColor = Color(0xFF162F4D);

const defaultPadding = EdgeInsets.all(16);

class DefaultButton extends StatelessWidget {
  final Color colorButton;
  final String buttonText;
  final VoidCallback? onPressed;

  const DefaultButton(
      {super.key,
      required this.buttonText,
      this.onPressed,
      required this.colorButton});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
      color: colorButton,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

class DefaultTextButton extends StatelessWidget {
  final String textButtonText;
  final double fontSize;
  final VoidCallback? onPressed;

  const DefaultTextButton(
      {super.key,
      required this.textButtonText,
      this.onPressed,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(textButtonText,
          style: TextStyle(
              color: linkColor, fontSize: fontSize, fontFamily: 'Poppins')),
    );
  }
}

class SettingsItems extends StatelessWidget {
  final IconData iconSettingsItem;
  final String textSettingsItem;
  final VoidCallback? onPressed;
  final double sizedBox;

  const SettingsItems(
      {super.key,
      required this.iconSettingsItem,
      required this.textSettingsItem,
      required this.onPressed,
      required this.sizedBox});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Icon(
            iconSettingsItem,
            size: 30,
          ),
          const SizedBox(width: 10,),
          Text(
            textSettingsItem,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: sizedBox,),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.keyboard_double_arrow_right_sharp,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}