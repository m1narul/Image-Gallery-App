import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_images.dart';
import '../constants/app_strings.dart';
import '../constants/app_text_styles.dart';

class CommonNoInterNetWidget extends StatelessWidget {
  const CommonNoInterNetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.noInternet),
            Text(
              AppStrings.checkConnection.tr,
              style: AppTextStyles.titleGradient,
            )
          ],
        ),
      ),
    );
  }
}
