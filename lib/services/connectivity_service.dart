import 'dart:async';
import 'dart:developer' as developer;
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../widgets/common_no_network_widget.dart';

class ConnectivityService extends GetxService {
  List<ConnectivityResult> connectionStatus = [ConnectivityResult.none];

  final Connectivity connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? connectivitySubscription;
  bool dialogShown = false;

  Future<ConnectivityService> init() async {
    await initConnectivity();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(updateConnectionStatus);
    return this;
  }

  Future<void> initConnectivity() async {
    try {} on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }
  }

  Future<void> updateConnectionStatus(List<ConnectivityResult> result) async {
    connectionStatus = result;
    checkInternet().then((result) {
      if (result == true) {
        if (dialogShown) {
          dialogShown = false;
          if (Get.context != null) Get.back();
        }
      }
    });
    if (connectionStatus.contains(ConnectivityResult.none)) {
      try {
        if (!dialogShown) showDialogView();
      } catch (e) {
        print("Error updateConnectionStatus: $e");
      }
    }
  }

  Future<bool> checkInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      print("InterNet REsult: $result");

      if ((result.isNotEmpty) && (result[0].rawAddress.isNotEmpty)) {
        return Future.value(true);
      } else {
        return Future.value(false);
      }
    } on SocketException catch (_) {
      return Future.value(false);
    }
  }

  void showDialogView() {
    dialogShown = true;
    if (Get.context != null)
      Get.dialog(barrierDismissible: false, const CommonNoInterNetWidget());
  }
}
