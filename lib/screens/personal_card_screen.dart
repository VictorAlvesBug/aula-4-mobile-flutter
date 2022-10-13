

import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  static const String id = 'personal_card';

  const PersonalCardScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  final PersonalCardScreenArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(arguments.image),
            const SizedBox(height: 16),
            Text(arguments.name),
            const SizedBox(height: 16),
            Text(arguments.phone),
            const SizedBox(height: 16),
            Text(arguments.email),
          ],
        ),
      ),
    );
  }
}

class PersonalCardScreenArguments {
  const PersonalCardScreenArguments({
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