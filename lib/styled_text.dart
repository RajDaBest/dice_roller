import 'package:flutter/material.dart';

class StylizedText extends StatelessWidget {
  const StylizedText(this.outputText, {super.key});
  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

class StylizedText extends StatelessWidget {
  const StylizedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image widget
        Container(
          width: 100, // Adjust width as needed
          height: 100, // Adjust height as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: const DecorationImage(
              image: AssetImage('assets/ritesh.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 32), // Space between image and text
        // Text widget
        const Text(
          'Dikhta Nahi Raat Me\nRitesh Meri Jhaant Me',
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
*/
