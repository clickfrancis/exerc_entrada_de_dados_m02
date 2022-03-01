import 'package:entrada_de_dados_exec/pages/calculator/view_calculator.dart';
import 'package:entrada_de_dados_exec/pages/focus/view_focus.dart';
import 'package:entrada_de_dados_exec/pages/login/view_login.dart';
import 'package:entrada_de_dados_exec/utils/strings.dart';
import 'package:flutter/material.dart';

class HomePageExercise extends StatefulWidget {
  const HomePageExercise({Key? key}) : super(key: key);

  @override
  State<HomePageExercise> createState() => _HomePageExerciseState();
}

class _HomePageExerciseState extends State<HomePageExercise> {
  final pageController = PageController();
  int selectedPage = 0;

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);

    setState(() {
      selectedPage = index;
    });
  }

  void onPageChanged(int value) {
    setState(() {
      selectedPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode_outlined),
          ),
        ],
        title: const Text(Strings.titleApp),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          Calculator(),
          Login(),
          Focused(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        onTap: _onItemTapped,
        currentIndex: selectedPage,
        selectedItemColor: Colors.amberAccent[700],
        unselectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Calculadora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_outlined),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_weak),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Idade',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose(); // TODO: implement dispose
    super.dispose();
  }
}
