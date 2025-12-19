import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scube_tech_task/app/app.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const ScubeTechApp());
}
