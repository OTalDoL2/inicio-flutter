// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    if(count > 0){
      setState((){
        count--;
      });
    }
  }

  void increment() {
    print('Increment');
    if(count < 20){
      setState((){
        count++;
      });
    }
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/paisagem-natural.jpg'),
                fit: BoxFit.cover,
              ),),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              (isFull ? 'Está cheio' : isEmpty ? 'Está vazio' : 'Pode Entrar'),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                backgroundColor: Color.fromARGB(158, 0, 0, 0),
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: 'KKKKKKKK', onPressed: decrement),
                MyButton(text: 'SIM', onPressed: increment)
              ],
            )
          ]),
        ));
}
}

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 54, 160, 218),
        foregroundColor: const Color.fromARGB(255, 67, 87, 97),
        // padding: const EdgeInsets.all(32),
        fixedSize: const Size(100, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black, width: 1)),
      ),
      child: Text(text),
    );
  }
}
