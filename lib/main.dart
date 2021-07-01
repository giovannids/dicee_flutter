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
    return Center(
      child: Row(
        children: [
          // A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
          Expanded(
            // A widget that insets its child by the given padding.
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // Several constructors are provided for the various ways that an image can be specified:
              // new Image.asset, for obtaining an image from an AssetBundle using a key.
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dice1.png'),
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
 */
