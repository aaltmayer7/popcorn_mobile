import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:popcorn_mobile/presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DotEnv().load('assets/.env.dev');
  runApp(AppWidget());
}
