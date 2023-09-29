import 'dart:io';

import 'package:bon_voyage/modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FotoCasa extends StatefulWidget {
  const FotoCasa({super.key});

  @override
  State<FotoCasa> createState() => _FotoCasaState();
}

class _FotoCasaState extends State<FotoCasa> {
  final List<File> _selectedImages = [];

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage == null) return;

    setState(() {
      if (_selectedImages.length < 10) {
        _selectedImages.add(File(pickedImage.path));
      }
    });
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
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
                'Adicione fotos do local',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Adicione entre 5 e 10 fotos',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _takePicture();
                },
                child: Container(
                  height: 400,
                  width: 500,
                  color: Colors.grey[300],
                  child: Stack(
                    children: _selectedImages
                        .asMap()
                        .entries
                        .map((entry) => Stack(children: [
                              Image.file(
                                entry.value,
                                fit: BoxFit.cover,
                                height: 400,
                                width: 500,
                              ),
                              Positioned(
                                top: 0,
                                right: 15,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    size: 50,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    _removeImage(entry.key);
                                  },
                                ),
                              ),
                            ]))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 260,
              ),
              DefaultButton(
                buttonText: 'Avançar',
                colorButton: btnColor,
                onPressed: () {
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
