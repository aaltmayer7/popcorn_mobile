import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:popcorn_mobile/presentation/pages/auth/welcome/welcome_page.dart';
import 'package:popcorn_mobile/presentation/pages/home/bindings/burger_binding.dart';
import 'package:popcorn_mobile/presentation/pages/home/home_page.dart';
import 'package:popcorn_mobile/presentation/pages/splash/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SigninPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      bindings: [HomeBinding()],
    ),
  ];
}
