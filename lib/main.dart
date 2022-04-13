import 'package:avaliacao_1bin/model/exercicio_model.dart';
import 'package:avaliacao_1bin/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        exercicios: List.generate(
          10,
          (index) =>
              ExercicioModel(nome: 'Exercicio $index', peso: 5, liked: false),
        ),
      ),
    );
  }
}
