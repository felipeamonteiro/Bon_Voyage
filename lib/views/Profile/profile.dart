import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Profile/delete.dart';
import 'package:bon_voyage/views/Registro_Firebase/Login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _auth = FirebaseAuth.instance;
  final _dbRef = FirebaseDatabase.instance.ref();

  String? userName;
  String? userCPF;
  String? userPhone;

  bool _isVerified = false;

  String? email;

  @override
  void initState() {
    super.initState();
    checkUserVerified();
    _getUserData();
    _getInfoData();
  }

  Future<void> _getUserData() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      final DataSnapshot snapshot =
          (await _dbRef.child('User/${user.uid}/Dados/Nome').get());
      final DataSnapshot snapshotCpf =
          (await _dbRef.child('User/${user.uid}/Dados/Cpf').get());
      final DataSnapshot snapshotPhone =
          (await _dbRef.child('User/${user.uid}/Dados/Telefone').get());

      if (snapshot.value != null) {
        setState(() {
          userName = snapshot.value.toString();
        });
      }
      if (snapshotCpf.value != null) {
        setState(() {
          userCPF = snapshotCpf.value.toString();
        });
      }
      if (snapshotPhone.value != null) {
        setState(() {
          userPhone = snapshotPhone.value.toString();
        });
      }
    }
  }

  Future<void> _getInfoData() async {
    User? user = await _auth.currentUser;

    if (user != null) {
      setState(() {
        email = user.email;
      });
    }
  }

  Future<void> checkUserVerified() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      await user.reload();
      user.emailVerified
          ? setState(() {
              _isVerified = true;
            })
          : setState(() {
              _isVerified = false;
            });
    }
  }

  Future<void> sendEmailVerification() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      await user.sendEmailVerification();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Verifique seu e-mail para ativar sua conta.')));
    }
  }

  Future<void> _signOut(context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LogIn()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        '< Back',
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await _signOut(context);
                      },
                      icon: const Icon(
                        Icons.logout,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/profile.webp'),
              ),
              const SizedBox(
                height: 10,
              ),
              userName != null
                  ? Text(
                      '$userName',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    )
                  : const Text('Falha ao encontrar o nome'),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    ProfileInput(hintText: 'Email: $email',),
                    const SizedBox(height: 20,),
                    ProfileInput(hintText: 'Telefone: $userPhone',),
                    const SizedBox(height: 20,),
                    const ProfileInput(hintText: 'Senha: ********',),
                    const SizedBox(height: 20,),
                    ProfileInput(hintText: 'CPF: $userCPF',),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Status da Conta:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _isVerified ? null : sendEmailVerification();
                          },
                          child: Text(
                            _isVerified ? 'Verificado' : 'Não Verificado >',
                            style: TextStyle(
                              color: _isVerified ? Colors.black : Colors.red,
                              fontSize: 18,
                              fontFamily: 'Poppins'
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              const ContainerDelete(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'É importante estar ciente dos riscos envolvidos ao excluir sua conta. Ao deletar sua conta, você perderá acesso a todos os dados, histórico de compras e informações associadas a ela. Além disso, pode não ser possível recuperar a conta ou os dados após a exclusão.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
