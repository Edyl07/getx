import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tuto/dynamic_theme/screens/first_screen.dart';

void main() async {

  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final themeData = GetStorage();
  
  // const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool darkMode = themeData.read('darkmode')??false;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      // home: const FirstScreen(),
      home: const FirstScreen(),
    );
  }
}




