import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Using Row and Column
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            //verticalDirection: VerticalDirection.up,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            /**
             * The column is made of a list of children widgets
             */
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.yellowAccent,
                child: const Text('Container 1'),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: const Text('Container 2'),
              ),
              Container(
                height: 100,
                color: Colors.green,
                child: const Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Using containers
class SomeApp extends StatelessWidget {
  const SomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: SafeArea(
          child: Container(
            /**
             * The container can only contain one child
             * It allows you to have complete control over everything within it.
             */
            height: 250,
            width: 300,
            /**
             * Here, the child is a single text.
             * Optionally, you have full control of the style
             */
            child: Text(
              "Welcome Home",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
            margin: const EdgeInsets.all(25),
            /**
             * The padding is an empty space to insert within the decoration
             * padding: const EdgeInsets.all(0), // Fot the interior contents
             */
            /**
             * Enable decoration of the container
             */
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            /**
             * The alignment of the child within it's parent (container)
             */
            alignment: Alignment.center,
            /**
             * Enable rotation, similar to that of Processing
             */
            transform: Matrix4.rotationZ(0.2),
          ),
        ),
      ),
    );
  }
}
