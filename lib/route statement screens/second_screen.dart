import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('IsDarkMode on :' + Get.isDarkMode.toString()),
            const SizedBox(
              height: 20,
            ),
            Text('Anroid Platfom :' + GetPlatform.isAndroid.toString()),
            const SizedBox(
              height: 20,
            ),
            Text('Height :' + Get.height.toString()),
            const SizedBox(
              height: 20,
            ),
            Text('Width :' + Get.width.toString()),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
