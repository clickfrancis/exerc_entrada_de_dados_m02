import 'package:flutter/material.dart';
import 'controller_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final controller = ControllerCalculator();
  TextEditingController clearInputOne = TextEditingController();
  final clearInputTwo = TextEditingController();

  double get total => controller.total;

  double firstNumber = 0.0;
  double secondNumber = 0.0;

  void clearField() {
    clearInputOne.clear();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    clearInputOne.dispose();
    clearInputTwo.dispose();
    super.dispose();
  }

  // void somar() {
  //   setState(() {
  //     controller.somar(firstNumber, secondNumber);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Text('Resultado: $total'),
              TextFormField(
                controller: clearInputOne,
                textInputAction: TextInputAction.next,
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Informe o primeiro Valor'),
                ),
                onChanged: (value) => {
                  firstNumber =
                      double.tryParse(value) != null ? double.parse(value) : 0.0
                },
              ),
              TextFormField(
                controller: clearInputTwo,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Informe o segundo Valor'),
                ),
                onChanged: (value) => {
                  secondNumber =
                      double.tryParse(value) != null ? double.parse(value) : 0.0
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      //  style: ButtonStyle(shape: ),
                      //onPressed: somar,
                      onPressed: () {
                        controller.somar(firstNumber, secondNumber);
                      },

                      child: const Text('Somar'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        clearField();
                        setState(() {
                          clearField;
                          clearInputTwo.clear();
                          controller.limpar();
                          firstNumber = 0;
                          secondNumber = 0;
                        });
                      },
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
