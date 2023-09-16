import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          MaterialButton(onPressed: () {}, child: const Text("Home Page")),
      appBar: AppBar(title: const Text("Connectivity - Second Page")),
    );
  }
}
