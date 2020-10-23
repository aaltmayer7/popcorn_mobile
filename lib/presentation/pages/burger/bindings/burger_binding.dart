import 'package:get/get.dart';
import 'package:popcorn_mobile/application/burger/burger_controller.dart';
import 'package:popcorn_mobile/infrastructure/burger/burger_repository.dart';
import 'package:popcorn_mobile/infrastructure/burger/burger_repository_adapter.dart';

class BurgerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IBurgerRepository>(() => BurgerRepository());
    Get.lazyPut<BurgerController>(
      () => BurgerController(burgerRepository: Get.find()),
    );
  }
}
