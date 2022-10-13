import 'dart:math';

import 'package:flutter/material.dart';

class DadoScreen extends StatefulWidget {
  static const String id = 'dado';

  const DadoScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DadoScreen> createState() => _DadoScreenState();
}

class _DadoScreenState extends State<DadoScreen> {
  int firstDice = 1;
  int secondDice = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState((){
                      firstDice = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset(
                    'assets/images/dice$firstDice.png',
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState((){
                      secondDice = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset(
                    'assets/images/dice$secondDice.png',
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DadoScreenArguments {
  const DadoScreenArguments({
    required this.image,
    required this.name,
    required this.phone,
    required this.email,
  });

  final String image;
  final String name;
  final String phone;
  final String email;
}
