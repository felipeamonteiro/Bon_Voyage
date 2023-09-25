import 'package:bon_voyage/views/Registro_Firebase/Cadastro/cadastro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {

  void _deleteAccount() async{
    try {
      final user = FirebaseAuth.instance.currentUser;
      final reference = FirebaseDatabase.instance.ref().child('User').child(user!.uid);

      await reference.remove();

      await user.delete();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Cadastro())
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Conta deletada com sucesso'
          ),
        )
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Erro ao deletar a conta'
          ),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          children: [
            const Text(
              'Deseja deletar sua conta?',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              'Ao contemplar a exclusão de sua conta, é inevitável não sentir um aperto no coração. Cada interação, cada viagem, tudo o que você compartilhou conosco fez parte de uma jornada única. A exclusão da sua conta significa deixar para trás memórias digitais preciosas. Sentiremos sua falta e esperamos que você considere todas as opções antes de dar esse passo. Lembre-se de que nossa plataforma está sempre aqui para você, e sua presença deixará um vazio que será sentido por todos nós.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              'Deseja realmente deletar sua conta?',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _deleteAccount();
                  },
                  child: const Text(
                    'Excluir',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/Heartbroken-bro 1.png'
            )
          ],
        ),
      ),
    );
  }
}

class ContainerDelete extends StatelessWidget {
  const ContainerDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 210),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DeleteAccount())
          );
        },
        child: const Text(
          'Deletar Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.red
          ),
        ),
      ),
    );
  }
}