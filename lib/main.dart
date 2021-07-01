import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Evitar usar "var" para declarar variables, usar en cambio tipos de variables específicos como "int, String, double, bool"
    var leftDiceNumber = 1;

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
                print('Left button got pressed.');
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                print('Right button got pressed.');
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
https://api.flutter.dev/flutter/widgets/Expanded-class.html
https://api.flutter.dev/flutter/widgets/Image-class.html
https://api.flutter.dev/flutter/widgets/Padding-class.html
https://api.flutter.dev/flutter/material/TextButton-class.html
 */
