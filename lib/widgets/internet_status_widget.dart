import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_connectivity/bloc/bloc.dart';

class InternetStatusWidget extends StatelessWidget {
  const InternetStatusWidget(
      {super.key,
      required this.child,
      this.setDefaultIsConnected = false,
      this.disable = false});

  final bool setDefaultIsConnected;

  final bool disable;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (disable) {
      return child;
    }

    return BlocBuilder<InternetStatusCubit, bool?>(
      builder: (context, isConnectedState) {
        isConnectedState ??= setDefaultIsConnected;
        return Material(
          child: Stack(
            children: [
            child,
              AnimatedSlide(
                offset: isConnectedState == false
                    ? Offset.zero
                    : const Offset(0, 1),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutQuint,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(colors: [
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(0.75),
                    Colors.black
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Internet Is Disconnected !?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                        child: const FlareActor(
                            'assets/animation/anim_disconnected.flr',
                            alignment: Alignment.center,
                            fit: BoxFit.fitHeight,
                            animation: "idle"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
