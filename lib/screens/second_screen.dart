import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            "Home Page",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          )),
      appBar: AppBar(title: const Text("Second Page")),
    );
  }
}
