import 'package:flutter/material.dart';
import 'dart:math';

// a const object can be assigned an object of the same type only if it's a const

final Random randomizer = Random(); // Random () is not a const constructor

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// the _ in front of the class name makes the class private to this file, i.e, this class will only be usable in
// this file
class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = randomizer.nextInt(6) + 1;

  void buttonPressed() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: buttonPressed, // function passed as pointer
          style: TextButton.styleFrom(
            // The padding is added between the contents and the top boundary of the Button
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white, // text color
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

/* 

StatelessWidget

A StatelessWidget is a widget that does not require mutable state. This means that once a 
StatelessWidget object is built, it cannot change over time. It's appearance and configuration
are determined entirely by it's constructor parameters and other constant values.AboutDialog

Stateless widgets are immutable. Once created, their properties cannot change. The build method of a StatelessWidget
is only called once when the widget is inserted into the widget tree. It will only be called again if the parent widget
changes and rebuilds the widget.

StatefulWidget

A StatefulWidget is a widget that can change over time in response to user actions, network responses, or other events. A StatefulWidget is 
associated with a State object that manages it's mutable state.

Stateful widgets are designed to change. They can rebuild their UI when the state changes. Each StatefulWidget has a corresponding
State object that holds the mutable state and handles the logic for updating the UI. The build method of StatefulWidget is called whenever
setState is called, allowing the widget to update it's UI in response to changes in state.

*/

/*

To declare a StatefulWidget with a const constructor, ensure that the constructor itself is marked const. This allows the widget
to be created as a constant if all of it's parameters are compile time constants.

All parameters of the const constructors must be immutable. This typically means they are final (or const), ensuring that once set, they cannot be changed

The State associated with the StatefulWidget is not affected by the const keyword. The State can be mutable and change over time.

We can create an instance of a StatefulWidget with const if the widget has a const constructor and all arguments provided to it are compile-time constants.
The arguments passed to the widget’s constructor must be known at compile time. This includes literal values like strings and numbers, as well as other const objects.

*/
