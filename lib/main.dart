import 'package:flutter/material.dart';
import 'package:my_app_flutter/app.dart';
import 'package:my_app_flutter/serviceLocator/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initDependenices();
  runApp(const App());
}

