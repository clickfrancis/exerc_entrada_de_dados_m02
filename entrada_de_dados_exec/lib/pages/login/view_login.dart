import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Login'),
        const SizedBox(height: 30),
        TextFormField(
            decoration: InputDecoration(
          filled: true,
          fillColor: Colors.purple[50],
          label: const Text('Usuário'),
          border: const UnderlineInputBorder(),
        )),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.purple[50],
            label: const Text('Senha'),
            border: const UnderlineInputBorder(),
          ).copyWith(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: obscureText
                  ? const Icon(Icons.visibility_outlined)
                  : const Icon(Icons.visibility_off_outlined),
            ),
          ),
          obscureText: obscureText,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Entrar'),
        ),
      ]),
    );
  }
}
