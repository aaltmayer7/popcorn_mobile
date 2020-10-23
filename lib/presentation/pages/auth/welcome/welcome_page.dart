import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';
import 'package:popcorn_mobile/presentation/pages/auth/welcome/widgets/welcome_content.dart';
import 'package:popcorn_mobile/presentation/pages/auth/welcome/widgets/welcome_header.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blackColor),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            WelcomeHeader(),
            WelcomeContent(),
          ],
        ),
      ),
    );
  }
}
