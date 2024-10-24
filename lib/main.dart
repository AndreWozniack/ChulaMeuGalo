import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MeuQuadrado());
  }
}

class MeuQuadrado extends StatefulWidget {
  const MeuQuadrado({super.key});

  @override
  State<MeuQuadrado> createState() => _MeuQuadradoState();
}

class _MeuQuadradoState extends State<MeuQuadrado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Quadrado'),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return const MeuQuadrado2();
            }));
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MeuQuadrado2 extends StatefulWidget {
  const MeuQuadrado2({super.key});

  @override
  State<MeuQuadrado2> createState() => _MeuQuadrado2State();
}

class _MeuQuadrado2State extends State<MeuQuadrado2> {
  var color = Colors.red;

  void changeColor() {
    setState(() {
      color = color == Colors.red ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Quadrado 2'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeColor,
          child: Container(
            width: 200,
            height: 200,
            color: color,
          ),
        ),
      ),
    );
  }
}
