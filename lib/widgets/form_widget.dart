// ignore_for_file: prefer_const_constructors

import 'package:avaliacao_1bin/screens/saved_screen.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  FormWidgetState createState() {
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  late String title;
  late String peso;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF8DA9C4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome';
                    } else {
                      title = value;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF8DA9C4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Peso',
                    fillColor: Color(0xFF8DA9C4),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Peso';
                    } else {
                      peso = value;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF0B2545),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Adicionado com sucesso!')),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedScreen(title, peso),
                      ),
                    );
                  }
                },
                child: const Text(
                  'SALVAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
