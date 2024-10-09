import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PixabayService {
  final String apiKey = '46418419-e77d637072bf55f51881a6ac8';
  final String baseUrl = 'https://pixabay.com/api/';

  Future<List<dynamic>> fetchImages(int page) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=$apiKey&q=photos&image_type=photo&per_page=20&page=$page'));
    Get.log("URL: ${'$baseUrl?key=$apiKey&q=photos&image_type=photo&per_page=20&page=$page'}");
    if (response.statusCode == 200) {
      return json.decode(response.body)['hits'];
    } else {
      throw Exception('Failed to load images');
    }
  }
}
