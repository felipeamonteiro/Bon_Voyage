import 'package:bon_voyage/modules/constants.dart';
import 'package:bon_voyage/views/Registro_Firebase/Login/login.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _cpfController = TextEditingController();

  bool _isCPFvalid = false;

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        String inputCPF = _cpfController.text;
        _isCPFvalid = validarCPF(inputCPF);
        if (!_isCPFvalid) {
          _showSnackbar(
              'CPF inválido. Por favor, corrija o CPF antes de continuar.');
          return;
        }

        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text);

        String userId = userCredential.user!.uid;

        final userReference = FirebaseDatabase.instance.ref().child('User');
        userReference.child(userId).child('Dados').set({
          'Cpf': _cpfController.text,
          'Nome': _nameController.text,
          'Telefone': _phoneController.text
        });

        await userCredential.user!.sendEmailVerification();

        _showSnackbar(
            'Conta criada com sucesso. Verifique seu e-mail para ativar sua conta.');

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const LogIn())
        // );
      } catch (e) {
        _showSnackbar('Erro ao criar conta: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/Logo_Escura.png',
              width: 200,
            ),
            const Text(
              'Crie sua conta',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Preencha todos os campos';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Digite seu nome:',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _cpfController,
                      onChanged: (text) {
                        setState(() {
                          _cpfController.text = _formatarCPF(text);
                          _cpfController.selection = TextSelection.fromPosition(
                              TextPosition(offset: _cpfController.text.length));
                        });
                      },
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 11 ||
                            _isCPFvalid) {
                          return 'Digite um CPF válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Digite seu CPF:',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      onChanged: (text) {
                        setState(() {
                          _phoneController.text = _formatarTelefone(text);
                          _phoneController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _phoneController.text.length));
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Preencha todos os campos';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Digite seu telefone:',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: (String? value) {
                        if (value == null) {
                          return 'O e-mail não pode ser vazio';
                        }
                        if (value.length < 10) {
                          return 'O e-mail é muito curto';
                        }
                        if (!value.contains('@')) {
                          return 'O e-mail não é valido';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Digite seu e-mail:',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'A senha não pode ser vazio';
                        }
                        if (value.length < 8) {
                          return 'A senha é muito curto';
                        }
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          return 'A senha deve conter pelo menos 1 número';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Digite sua senha:',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Preencha todos os campos';
                        }
                        if (value != _passwordController.text) {
                          return 'Senhas diferentes';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Confirme a senha:',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Ao se cadastrar você concorda com os Termos de Uso e Política de Privacidade',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DefaultButton(
                          buttonText: 'Cadastrar',
                          colorButton: btnColor,
                          onPressed: () {
                            _register();
                          },
                        ),
                        DefaultTextButton(
                          textButtonText: 'Já tenho uma conta',
                          fontSize: 18,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Termos | Privacidade',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String _formatarTelefone(String phone) {
  phone = phone.replaceAll('.', '').replaceAll('-', '');
  if (phone.length != 11) {
    return phone;
  }

  return "(${phone.substring(0, 2)}) ${phone.substring(2, 3)} ${phone.substring(3, 7)}-${phone.substring(7)}";
}

String _formatarCPF(String cpf) {
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');
  if (cpf.length != 11) {
    return cpf;
  }

  return "${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}";
}

bool validarCPF(String cpf) {
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');

  if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) {
    return false;
  }

  int soma = 0;
  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * (10 - i);
  }

  int digito1 = 11 - (soma % 11);

  if (digito1 >= 10) {
    digito1 = 0;
  }

  soma = 0;
  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * (11 - i);
  }

  int digito2 = 11 - (soma % 11);

  if (digito2 >= 10) {
    digito2 = 0;
  }

  return cpf.endsWith('$digito1$digito2');
}
