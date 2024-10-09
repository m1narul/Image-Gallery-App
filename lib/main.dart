import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/gallery_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GalleryPage(),
    );
  }
}