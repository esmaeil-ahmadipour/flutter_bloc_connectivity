import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_connectivity/bloc/bloc.dart';
import 'package:flutter_bloc_connectivity/widgets/internet_status_widget.dart';
import 'home_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetStatusCubit(),
      child: MaterialApp(
        builder: (context,widget){
          return InternetStatusWidget(child: widget!) ;
        },
        title: 'Flutter BloC Connectivity',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        ),
        home: const HomePage(),
      ),
    );
  }
}
