import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_mobile/presentation/core/bindings/app_bindings.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_theme.dart';
import 'package:popcorn_mobile/presentation/core/translations/app_translations.dart';
import 'package:popcorn_mobile/presentation/core/utils/logger_utils.dart';
import 'package:popcorn_mobile/presentation/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Popcorn',
      theme: appThemeData,
      initialBinding: AppBindings(),
      enableLog: true,
      logWriterCallback: Logger.write,
      debugShowCheckedModeBanner: false,
      color: Color(accentColor),
      locale: Locale('fr'),
      fallbackLocale: Locale('fr', 'FR'),
      translationsKeys: AppTranslation.translations,
      navigatorKey: Get.key,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
