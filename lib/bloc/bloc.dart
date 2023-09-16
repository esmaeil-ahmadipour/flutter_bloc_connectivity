import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetStatusCubit extends Cubit<bool> {
  final InternetConnectionChecker _internetConnectionChecker =
      InternetConnectionChecker();
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  InternetStatusCubit() : super(true) {
    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result != ConnectivityResult.none) {
        _checkInternetStatus();
      } else {
        emit(false);
      }
    });
  }

  void _checkInternetStatus() async {
    final isConnected = await _internetConnectionChecker.hasConnection;
    emit(isConnected);
  }

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    return super.close();
  }
}
