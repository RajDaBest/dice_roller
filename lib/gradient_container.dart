// import 'package:first_app/styled_text.dart';
// import 'package:first_app/dice_roller.dart';
import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer.purple({super.key})
      : color = const [
          Colors.purpleAccent,
          Colors.deepPurpleAccent
        ]; // the parameter passed to a const constructor must be a const (run-time constant) itself

  const GradientContainer({super.key, required this.color});
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        // cannot use const with center since Image.asset is not a constant oonstructor
      ),
    );
  }
}

/*
final List<int> integer = [1, 2, 3];
integer being declared final means that once it's assigned a list (in this case, [1, 2, 3]),
it cannot be assigned some other list, but elements can be added to or removed from integer; so it's
not a compile-time constant; so, it cannot be passed to a widget that is used as const
*/

/*

The const keyword in Dart is used to define compile-time constants.

A const variable or value is a compile-time constant. This means it's value is
determined at compile time rather than at runtime. Examples include numbers, strings, and other literal values.

const int x = 10;
const String y = 'hello';

We can create immutable objects (lists, map, sets) using const. The elements 
of these collections are also required to be compile-time constants.

const List<int> numbers = [1, 2, 3];

A class can have a const constructor, allowing us to create compile-time constant instances of that class.
For a constructor to be const, all fields in the class must be final (they can also be const themselves) and the values
being assigned to them when creating an object of that class (by passing the values as parameters) must be compile-time constants if that instance is being created as a const.

The final keyword is used to declare a variable that can be set only once. Once assigned, it's value cannot be changed
, but it does not need to be known at compile-time. A final variable is initialized when it is first accessed at runtime.
The variable can be assigned a value only once. After that, it is read-only. It is often used for instance variables in classes
to ensure they are immutable after being set.

final provides immutability after the initial assignment at run-time. const ensures
immutability at compile-time and requires the entire expression to be a compile-time constant.

final is commonly used for instance variables in classes to ensure they are not reassigned after being set.
const is used for static fields and top-level variables, and in expressions where the entire expression can be evaluated at compile time.

A final list is a list whose reference cannot be changed once it is assigned, but it's contents can still be
modified. The reference to the list cannot be reassigned to another list after it has been initialized. The elements of the list can be
added, removed, or changed.

A const list is deeply immutable. Neither the reference nor the contents of the list can be changed. The list and it's
contents must be known at compile-time.
*/

/*

We can use const with a class constructor when the class and all of it's fields can be fully initialized with compile-time
constants. The constructor itself must be declared const and all the fields initialized by the constructor must be final
and assigned values that are compile-time constants and any parameters passed to the const constructor must also be compile-time constants.

We can use const for variables when their values are known and fixed at compile time. This includes literals and expressions that can be evaluated completely at compile time.
The variable must be assigned a compile-time constant.
The value must not change and must be known at compile time.

We can use const with lists (or any collection) when the list and all of its elements are compile-time constants.
The list itself must be defined as const.
All elements within the list must also be constants.

*/

/*

final String x = 'hello';
const String y = 'hello;

x is not a compile-time constant, rather y is

*/

/* 

When Can A Constructor Be Declared as const?

1. All fields in the class must be final. This ensures that once the fields are set
, they cannot be changed.
2. The constructor must be able to fully initialize the object using constant expressions.
3. The constructor cannot perform any operations that depend on runtime values. It should only use constant values
and run-time constants.
4. The class should be designed to hold immutable data. This means the class itself should represent a fixed value once
constructed.

When Can const Be Used When Calling A Constructor?

1. The class must have a const constructor
2. All arguments passed to the constructor must be compile-time constants. This includes both primitive types and 
any other objects or lists that must also be const.
3. The const keyword can be used in any context where the value is determined at compile time and doesn't need to change at runtime.

Any object passed somewhere inside a constructor being used as const must have a const constructor.

When you use const to create an object, you're essentially instructing Dart to evaluate and store that object at compile time. This means that every part of the object and any objects it references must be fully determined at compile time and immutable.

const objects must be completely immutable. If an object that is passed as a parameter to a const constructor can change, it would violate the immutability of the containing const object.

const requires that all expressions, including any objects it references, be resolved at compile time. This means that every object passed into a const constructor must also be created with const, ensuring it is a compile-time constant.

*/

/*

Column () and Row () can be used to place multiple child widgets next to each other.AboutDialog

Column ()
Main Axis: Vertical
Cross Axis: Horizontal

By default, occupies the entire available height but only the width required by it's contents (children)


Row ()
Main Axis: Horizontal Axis
Cross Axis: Vertical Axis

By default, occupies the entire available width but only the height required by it's content (children)

*/

/*

ElevatedButton () - displaying a button that has a background color and a slight shadow
OutlinedButton () - displaying a button that has no background color but an outline
TextButton () - displaying a button that is a pressable text

*/

/* 

SizedBox () - creates a box of a certain fixed size

Container and most other widgets simply take the width and height they need to take,
to fit their contents into themselves. For example, a text widget is just as high and wide
as needed to fit it's contents into itself without the content being cut off.AboutDialog

On the other hand, we can set an explicit height and width in SizedBox that is then set in stone.
Any widget inside SizedBox would not lead the box to become bigger than it was set to be, possibly then
leading to the content of the box being cut.

*/

/*



*/