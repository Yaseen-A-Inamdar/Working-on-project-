import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Placeholder(
        child: Align(
          child: Center(
            child: Text(
              "Wellcome to 30 days flutter, Alhamduliliah alllah ka lakh lakh shukar hai Sal lallahu alaihi wa aali hi  wasalam ",
            ),
          ),
        ),
      ),
    );
  }
}
