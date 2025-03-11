import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.flutter_dash_outlined,
          color: Colors.lightBlue,
          size: 40,
        ),
      ),
    );
  }
}
