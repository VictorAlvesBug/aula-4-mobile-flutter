
import 'package:aula4/screens/dado_screen.dart';
import 'package:aula4/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:aula4/screens/personal_card_screen.dart';

class MenuScreen extends StatelessWidget {
  static const String id = 'menu_screen';

  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 16,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PersonalCardScreen.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                  child: Text(
                    'Cartão pessoal',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, DadoScreen.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                  child: Text(
                    'Dice',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, QuizScreen.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
