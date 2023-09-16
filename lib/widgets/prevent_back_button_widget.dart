import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_connectivity/bloc/bloc.dart';

class PreventBackButtonWidget extends StatelessWidget {
  const PreventBackButtonWidget(
      {super.key, required this.child, this.onWillPop});

  final Widget child;
  final bool? onWillPop;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetStatusCubit, bool?>(
        builder: (context, isConnectedState) {
      return WillPopScope(
          onWillPop: () async {
            if (isConnectedState!=true) {
              return false;
            } else {
              return onWillPop??true;
            }
          },
          child: child);
    });
  }
}
