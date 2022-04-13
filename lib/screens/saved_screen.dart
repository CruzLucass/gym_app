import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen(this.title, this.peso, {Key? key}) : super(key: key);
  final String title;
  final String peso;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informações Salvas',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0B2545),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.white,
                    offset: Offset(4, 4),
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCs36yDHkVKx2lMQdEcBDyBUpNbuIZ7M_R3iuEzRi3UsvEpup8fyw7UeqavwfN5OAl6YY&usqp=CAU'),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF8DA9C4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Text(
                    'Nome: $title',
                    style: const TextStyle(
                      color: Color(0xFF0B2545),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF8DA9C4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Text(
                    'Peso: $peso',
                    style: const TextStyle(
                      color: Color(0xFF0B2545),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 300,
              height: 60,
              child: Center(
                child: Text(
                  'Salvo com sucesso!',
                  style: TextStyle(
                    color: Color(0xFF0B2545),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
