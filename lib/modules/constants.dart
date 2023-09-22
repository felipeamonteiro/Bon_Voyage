import 'package:flutter/material.dart';

const String apiKey = 'AIzaSyDDd4BZ8waWzBTYdZd5pr2MBu2DnmK0Wv4';
const String apiPassagensJson ='https://raw.githubusercontent.com/LuizLimaG/APIPassagens/main/app.json';

const Color btnColor = Color(0xFF4A7FCD);
const Color bgColor = Color(0xFFD7E4F4);
const Color linkColor = Color(0xFF4E9FFF);
const Color headerColor = Color(0xFF162F4D);

const defaultPadding = EdgeInsets.all(16);

class DefaultButton extends StatelessWidget {

  final Color colorButton;
  final String buttonText;
  final VoidCallback? onPressed;

  const DefaultButton({super.key, required this.buttonText, this.onPressed, required this.colorButton});

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