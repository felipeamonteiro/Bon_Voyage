import 'package:bon_voyage/views/Navigation/Settings/settings.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        onTap: (value) {
          setState(() {
            _selectedOption = value;
          });
        },
        showUnselectedLabels: false,
        currentIndex: _selectedOption,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.signpost),
            label: 'Guia'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: 'Passagem,'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_individual_suite_outlined),
            label: 'Hospedagem'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Configuração'
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedOption,
        children: const [
          // Home(),
          // Guide(),
          // Passagens(),
          // Hospedagem(),
          Settings()
        ],
      ),
    );
  }
}