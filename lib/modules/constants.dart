import 'package:bon_voyage/modules/apigoogle.dart';
import 'package:flutter/material.dart';

const String apiKey = apiGoogle;
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Icon(
            iconSettingsItem,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            textSettingsItem,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: sizedBox,
          ),
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

class ProfileInput extends StatelessWidget {
  final String hintText;

  const ProfileInput({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black)),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChanged;
  final String text;
  final Icon icon;

  const CustomRadioButton(
      {super.key,
      required this.index,
      required this.selectedIndex,
      required this.onChanged,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
          width: 200,
          height: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: index == selectedIndex ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}

class CustomButton extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChanged;
  final String text1;
  final String text2;
  final double size;
  final Icon icon;

  const CustomButton(
      {super.key,
      required this.index,
      required this.selectedIndex,
      required this.onChanged,
      required this.text1,
      required this.icon, 
      required this.text2, 
      required this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
        width: double.infinity,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: index == selectedIndex ? Colors.black : Colors.grey,
            width: index == selectedIndex ? 3 : 1,
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    text2,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              SizedBox(
                width: size,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
