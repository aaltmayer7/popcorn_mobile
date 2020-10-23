import 'package:get/get.dart';
import 'package:popcorn_mobile/application/auth/auth_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
