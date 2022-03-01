import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  label: Text('Informe o primeiro Valor'),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  label: Text('Informe o segundo Valor'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      //  style: ButtonStyle(shape: ),
                      onPressed: () {},
                      child: const Text('Somar'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Limpar'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
