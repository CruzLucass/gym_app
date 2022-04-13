import 'package:avaliacao_1bin/model/exercicio_model.dart';
import 'package:avaliacao_1bin/screens/add_screen.dart';
import 'package:avaliacao_1bin/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final List<ExercicioModel> exercicios;
  const HomeScreen({
    Key? key,
    required this.exercicios,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _countLike = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotina Exercicios'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0B2545),
      ),
      body: ListView.builder(
        itemCount: widget.exercicios.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      widget.exercicios[index].nome,
                      widget.exercicios[index].peso),
                ),
              );
            },
            title: SizedBox(
              width: 200,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.airplanemode_active_outlined),
                  Text(widget.exercicios[index].nome),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  if (widget.exercicios[index].liked) {
                    widget.exercicios[index].liked = false;
                    _countLike -= 1;
                  } else {
                    widget.exercicios[index].liked = true;
                    _countLike += 1;
                  }
                });
              },
              icon: Icon(
                widget.exercicios[index].liked
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: const Color(0xFFA22C29),
              ),
            ),
          );
        },
      ),
      bottomSheet: Container(
        color: const Color(0xFF0B2545),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total de $_countLike',
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Color(0xFFA22C29),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF8DA9C4),
                ),
                child: IconButton(
                  icon: const Icon(Icons.add, color: Color(0xFF13315C)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddScreen(),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
