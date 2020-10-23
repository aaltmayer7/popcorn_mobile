import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';
import 'package:popcorn_mobile/presentation/pages/auth/sign_in/widgets/sign_in_form/sign_in_form.dart';
import 'package:popcorn_mobile/presentation/shared/app_bar_widget.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blackColor),
      appBar: AppBarWidget(context),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 130),
              Text(
                'signing'.tr,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                ),
              ),
              Expanded(
                child: SigninForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
