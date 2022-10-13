import 'package:aula4/screens/dado_screen.dart';
import 'package:aula4/screens/quiz/finished_quiz_screen.dart';
import 'package:aula4/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:aula4/screens/menu_screen.dart';
import 'package:aula4/screens/personal_card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        PersonalCardScreen.id: (context) => const PersonalCardScreen(
              arguments: PersonalCardScreenArguments(
                image:
                    'https://docs.flutter.dev/assets/images/homepage/DashWithApprenticeBook.png',
                name: 'Dash',
                phone: '11 123456789',
                email: 'dash@flutter.com',
              ),
            ),
        DadoScreen.id: (context) => const DadoScreen(),
        QuizScreen.id: (context) => const QuizScreen(),
        FinishedQuizScreen.id: (context) => FinishedQuizScreen(
          arguments: ModalRoute.of(context)?.settings.arguments as FinishedQuizScreenArguments,
        ),
      },
    );
  }
}
