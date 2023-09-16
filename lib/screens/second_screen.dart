import 'package:flutter/material.dart';
import 'package:flutter_bloc_connectivity/widgets/prevent_back_button_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PreventBackButtonWidget(
      // onWillPop: false,
      child: Scaffold(
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
      ),
    );
  }
}
