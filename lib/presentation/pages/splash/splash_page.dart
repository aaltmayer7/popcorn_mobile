import 'package:flutter/material.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';
import 'package:popcorn_mobile/presentation/core/utils/assets_utils.dart';
import 'package:popcorn_mobile/presentation/shared/delayed_animation_widget.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blackColor),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: DelayedAnimation(
              child: Image(
                image: AssetImage(AssetsUtils.image('logo')),
                height: 240,
                width: 240,
              ),
              delay: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
