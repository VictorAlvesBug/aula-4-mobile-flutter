import 'package:aula4/screens/quiz/components/question_button.dart';
import 'package:aula4/screens/quiz/finished_quiz_screen.dart';
import 'package:aula4/screens/quiz/model/question_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz';

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> questions = [];
  var questionIndex = 0;
  var score = 0;

  @override
  void initState() {
    super.initState();
    questions = loadQuestions();
  }

  List<QuestionModel> loadQuestions() {
    return [
      QuestionModel(
          question: "Quem descobriu o Brasil?", options: ['João', 'Kleber', 'Pedro'], answer: 2),
      QuestionModel(
          question: "Qual o valor da constante Phi?", options: ['3,14159...', '1,618033...', '1,4142...'], answer: 1),
      QuestionModel(
          question: "Que país é esse?", options: ['Brasil', 'Estados Unidos', 'Bélgica'], answer: 0),
    ];
  }

  void onOptionPressed(int selectedOption) {
    final currentQuestion = questions[questionIndex];

    if (selectedOption == currentQuestion.answer) {
      score++;
    }

    goToNextQuestion();
  }

  void goToNextQuestion() {
    if (questionIndex == questions.length - 1) {
      Navigator.pushReplacementNamed(
        context,
        FinishedQuizScreen.id,
        arguments: FinishedQuizScreenArguments(score: score),
      );
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestion.question),
              const SizedBox(height: 32),
              ListView.separated(
                itemCount: currentQuestion.options.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return QuestionButton(
                      text: currentQuestion.options[index],
                      onPressed: () {
                        onOptionPressed(index);
                      });
                },
                separatorBuilder: (_, __) {
                return Divider(
                  height: 10,
                );
              },
              )
            ],
          ),
        ),
      ),
    );
  }
}
