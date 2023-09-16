import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MaterialButton(onPressed: (){},child: const Text("Second Page")),
      appBar: AppBar(title: const Text("Connectivity - Home Page")),
    );
  }
}
