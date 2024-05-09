// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Pode Entrar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: 'Saiu', onPressed: decrement),
              MyButton(text: 'Entrou', onPressed: increment)
              // buildTextButtonWithFunction('Saiu', decrement),
              // buildTextButtonWithFunction('Saiu', decrement),
              // TextButton(
              //     onPressed: decrement,
              //     style: TextButton.styleFrom(
              //       backgroundColor: Colors.blueGrey, 
              //       foregroundColor: const Color.fromARGB(255, 67, 87, 97), 
              //       // padding: const EdgeInsets.all(32),
              //       fixedSize: const Size(100, 1),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //         side: const BorderSide(
              //           color: Colors.black,
              //           width: 1
              //         )
              //       ),
                    
              //     ),
              //     child: const Text(
              //       'Saiu',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w600,
              //           color: Colors.white),
              //     )),
              // TextButton(
              //     onPressed: increment,
              //     child: const Text(
              //       'entrou',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w600,
              //           color: Colors.white),
              //     )),
            ],
          )
        ]));

    // Container(
    //     color: Colors.green,
    //     alignment: Alignment.center,
    //     child: const Text('Hello World!!'));
  }

  //                     backgroundColor: Colors.blueGrey, 
//                     foregroundColor: const Color.fromARGB(255, 67, 87, 97), 
//                     // padding: const EdgeInsets.all(32),
//                     fixedSize: const Size(100, 1),
//                     shape: RoundedRectangleBorder(),
                    
//                   ),
//                   child: const Text(
//                     'Saiu',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white),
//                   )),


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
          side: const BorderSide(
            color: Colors.black,
            width: 1
          )
        ),
      ),
      child: Text(text),
    );
  }
}