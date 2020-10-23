import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/core/utils/assets_utils.dart';

class AppBarWidget extends AppBar {
  AppBarWidget(BuildContext context, {Key key, Widget title})
      : super(
          key: key,
          centerTitle: true,
          title: Image(
            image: AssetImage(
              AssetsUtils.image('logo'),
            ),
            height: 155,
            width: 55,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Colors.white,
            ),
            onPressed: () => Get.back(),
          ),
        );
}
