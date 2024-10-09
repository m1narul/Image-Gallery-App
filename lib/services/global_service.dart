/*
 * File name: global_service.dart
 * Last modified: 2022.02.26 at 14:50:11
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

import 'package:get/get.dart';

import '../../common/helper.dart';

class GlobalService extends GetxService {
  late String? baseURL;
  late String? apiPath;
  late String? androidStoreLink;
  late String? iosStoreLink;
  late String? piXaBayApiKey;

  Future<GlobalService> init() async {
    var response = await Helper.getJsonFile('config/global.json');

    baseURL = response['base_url_prod'];
    apiPath = response['api_path'];
    androidStoreLink = response['android_app'];
    iosStoreLink = response['ios_app'];
    piXaBayApiKey = response['PiXaBayApiKey'];
    return this;
  }

  String get baseUrl => baseURL ?? "";

  String get apiCommonPath => apiPath ?? "";

  String get iosAppLink => iosStoreLink ?? "";

  String get androidAppLink => androidStoreLink ?? "";
  String get apiKey => piXaBayApiKey ?? "";
}
