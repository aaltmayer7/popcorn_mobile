import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/application/burger/burger_controller.dart';
import 'package:popcorn_mobile/domain/burger/burger_model.dart';

class BurgerPage extends StatelessWidget {
  BurgerController burgerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: burgerController.burgers.value.length,
          itemBuilder: (context, index) {
            final BurgerModel burger = burgerController.burgers.value[index];
            return ListTile(
              title: Text(
                burger.name,
                style: Theme.of(context).textTheme.headline5,
              ),
              subtitle: Text(''),
            );
          },
        ),
      ),
    );
  }
}
