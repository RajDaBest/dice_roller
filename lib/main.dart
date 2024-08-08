/*
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.deepPurpleAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight, 
            ),
          ),
          child: const Center(
            child: Text('Pranav Teri Maa Ki Chut'),
          ),
        ),
      ),
    ),
  );
}
*/

import 'package:flutter/material.dart';

import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}

/*

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 224, 10, 178),
            Color.fromARGB(255, 228, 15, 15),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: ImageAndText(),
      ),
    );
  }
}

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image widget
        Container(
          width: 300, // Adjust width as needed
          height: 300, // Adjust height as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/ritesh.jpeg'), // Ensure this path is correct
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16), // Space between image and text
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
