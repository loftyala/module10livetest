import 'package:flutter/material.dart';

class TextStyling extends StatefulWidget {
  const TextStyling({super.key});

  @override
  State<TextStyling> createState() => _TextStylingState();
}

class _TextStylingState extends State<TextStyling> {
  final snackBar = SnackBar(content: Text('You clicked the button'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Experiment with text style',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),

            TextButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, child: Text('Click me '))
          ],
        ),
      ),
    );
  }
}