import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, this.item});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: item,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
            top: 50,
            right: 20,
            child: MaterialButton(
              onPressed: () {
                Get.back();
              },
              color: Colors.blue,
              textColor: Colors.white,
              padding: const EdgeInsets.all(16),
              shape: const CircleBorder(),
              child: const Icon(
                Icons.close,
                size: 24,
              ),
            )),
      ],
    );
  }
}
