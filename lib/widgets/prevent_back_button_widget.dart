import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_connectivity/bloc/bloc.dart';

class PreventBackButtonWidget extends StatelessWidget {
  const PreventBackButtonWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetStatusCubit, bool?>(
        builder: (context, isConnectedState) {
      return WillPopScope(
          onWillPop: () async {
            return isConnectedState!;
          },
          child: child);
    });
  }
}
