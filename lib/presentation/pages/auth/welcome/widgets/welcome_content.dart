import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:popcorn_mobile/presentation/shared/delayed_animation_widget.dart';
import 'package:popcorn_mobile/presentation/shared/rounded_button_widget.dart';

class WelcomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DelayedAnimation(
        delay: 1400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButtonWidget(
              onPressed: () => Get.to(SigninPage()),
              label: 'signin'.tr,
            ),
            SizedBox(height: 25),
            RoundedButtonWidget(
              onPressed: () => Get.to(SigninPage()),
              label: 'signup'.tr,
              isRaised: false,
            ),
          ],
        ),
      ),
    );
  }
}
