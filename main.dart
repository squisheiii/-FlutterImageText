  import 'package:flutter/material.dart';

  /*
  The purpose of this syntax is to import the flutter material design library widgets, tools for building a material design Ui google design system


  import - dart keyword to include external libraries

  package:flutter - refers tp the material design packages

  this os essential for building flutter apps w/ a standard UI
   * */

  void main() {
    runApp(const MyApp()); // flutter function that initialize the app and attaches root widget (My App()) to the screen

  }

  class MyApp extends StatelessWidget { // MyAapp Extends custpm class
    // stateless widgets - base class for widgets that do not hold nutable
    //
    const MyApp({super.key});

    @override //indicates the method overrides the statelessWidget
    Widget build(BuildContext context) {
      return MaterialApp(
          title: 'Hello Flutter',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const MyHomePage(),
      );
    }
  }

  class MyHomePage extends StatelessWidget{
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext contex) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Title App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/chip.jpeg',
              width: 400,
              height: 400,
              ),
              const Text(
                'MY FUTURE YOU',
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                'Premise. Karen (Francine Diaz) and Lex (Seth Fedelin) meet each other on an online dating app. They live in two different timelines, set fifteen years apart, whose connection was made possible through a comet. After learning their strange situation, they work on changing the past to alter their fate.',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )
      );
    }
  }