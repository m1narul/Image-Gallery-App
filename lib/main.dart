import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/gallery_page.dart';
import 'services/connectivity_service.dart';
import 'services/global_service.dart';
Future<void> initServices() async {
  Get.log('starting services ...');
  await Get.putAsync(() => GlobalService().init());
  await Get.putAsync(() => ConnectivityService().init());
  Get.log('All services started...');
}
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GalleryPage(),
    );
  }
}