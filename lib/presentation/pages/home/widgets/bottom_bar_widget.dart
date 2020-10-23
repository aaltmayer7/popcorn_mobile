import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';

class BottomBarWidget extends StatelessWidget {
  final Key key;
  final AnimationController controller;
  final int index;
  final Function onTap;

  const BottomBarWidget({
    this.key,
    this.controller,
    this.index,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: [
        Icons.add,
        Icons.animation,
        Icons.atm,
        Icons.clear,
      ],
      backgroundColor: Color(blackColor),
      splashColor: Color(primaryColor),
      activeColor: Color(primaryColor),
      inactiveColor: Colors.white,
      notchAndCornersAnimation: controller,
      activeIndex: this.index,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.smoothEdge,
      leftCornerRadius: 5,
      rightCornerRadius: 5,
      onTap: (index) => onTap(index),
    );
  }
}
