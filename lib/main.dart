import 'package:flutter/material.dart';
// dart:math: Mathematical constants and functions, plus a random number generator.
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
      backgroundColor: Colors.red,
    ),
  ));
}

// A widget that has mutable state.
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  changeDiceNumbers() {
    // setState: Notify the framework that the internal state of this object has changed.
    // Whenever you change the internal state of a State object, make the change in a function that you pass to setState:
    setState(() {
      // Asigna un número aleatorio (1-6) a leftDiceNumber y rightDiceNumber
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
          Expanded(
            // A Material Design "Text Button".
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              // onPressed: Called when the button is tapped or otherwise activated.
              onPressed: () {
                changeDiceNumbers();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                changeDiceNumbers();
              },
            ),
          )
        ],
      ),
    );
  }
}

/*
REFERENCIAS
Flutter Documentation
https://api.flutter.dev/flutter/widgets/Expanded-class.html
https://api.flutter.dev/flutter/widgets/Image-class.html
https://api.flutter.dev/flutter/material/material-library.html
https://api.flutter.dev/flutter/widgets/Padding-class.html
https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html
https://api.flutter.dev/flutter/widgets/State/setState.html
https://api.flutter.dev/flutter/material/TextButton-class.html

Dart Documentation
https://api.dart.dev/stable/2.2.0/dart-math/dart-math-library.html
 */
