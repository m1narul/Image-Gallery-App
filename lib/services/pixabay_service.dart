import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'global_service.dart';


class PiXaBayService {

  Future<List<dynamic>> fetchImages(int page) async {
    Get.log("URL: ${'${Get.find<GlobalService>().baseURL}?key=${Get.find<GlobalService>().apiKey}&q=photos&image_type=photo&per_page=20&page=$page'}");

    final response = await http.get(Uri.parse(
        '${Get.find<GlobalService>().baseURL}?key=${Get.find<GlobalService>().apiKey}&q=photos&image_type=photo&per_page=20&page=$page'));
    if (response.statusCode == 200) {
      return json.decode(response.body)['hits'];
    } else {
      throw Exception('Failed to load images');
    }
  }
}
