import 'package:flutter/material.dart';
import 'package:flutter_bloc_connectivity/screens/second_screen.dart';
import 'package:flutter_bloc_connectivity/widgets/prevent_back_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PreventBackButtonWidget(
      child: Scaffold(
        floatingActionButton: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            "Second Page",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Home Page",
          ),
        ),
        body: Center(
          child: Container(
            color: Theme.of(context).colorScheme.tertiary,
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                "TEST",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onTertiary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
