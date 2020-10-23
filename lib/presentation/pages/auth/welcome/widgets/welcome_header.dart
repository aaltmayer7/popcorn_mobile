import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/core/utils/assets_utils.dart';
import 'package:popcorn_mobile/presentation/shared/delayed_animation_widget.dart';

class WelcomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DelayedAnimation(
              child: Image(
                image: AssetImage(AssetsUtils.image('logo')),
                height: 240,
                width: 240,
              ),
              delay: 600,
            ),
            DelayedAnimation(
              child: Text(
                'welcome'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: "ProductSansBold",
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  letterSpacing: 3,
                ),
              ),
              delay: 1200,
            ),
          ],
        ),
      ),
    );
  }
}
