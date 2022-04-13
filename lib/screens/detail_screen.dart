import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String nome;
  final int peso;

  const DetailScreen(this.nome, this.peso, {Key? key, exercicios})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _peso = 0;
  void _upPeso() {
    setState(() {
      _peso += 5;
    });
  }

  void _downPeso() {
    setState(() {
      if (_peso > 0) {
        _peso -= 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes',
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
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nome: ',
                        style: TextStyle(
                          color: Color(0xFF0B2545),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        widget.nome,
                        style: const TextStyle(
                          color: Color(0xFF0B2545),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Peso: ',
                        style: TextStyle(
                          color: Color(0xFF0B2545),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        (widget.peso + _peso).toString(),
                        style: const TextStyle(
                          color: Color(0xFF0B2545),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF0B2545),
                            ),
                          ),
                          onPressed: () {
                            _upPeso();
                          },
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Color(0xFF8DA9C4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF0B2545),
                            ),
                          ),
                          onPressed: () {
                            _downPeso();
                          },
                          child: const Icon(
                            Icons.south,
                            color: Color(0xFF8DA9C4),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
