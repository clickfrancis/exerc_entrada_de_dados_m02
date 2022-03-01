import 'package:entrada_de_dados_exec/theme/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home/view/view_homepage.dart';

class ExercEntradaDeDadosMDois extends StatelessWidget {
  const ExercEntradaDeDadosMDois({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeApp.lights,
      darkTheme: ThemeApp.darks,
      home: const HomePageExercise(),
    );
  }
}
