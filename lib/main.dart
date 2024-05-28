// ignore_for_file: depend_on_referenced_packages

import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/preference.dart';
import 'package:ai_assistant/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Preference.initialize();

 await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  //Portrait Orientation
  await SystemChrome.setPreferredOrientations( 
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  GetMaterialApp(
      title: appName,
      //Remove banner
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}