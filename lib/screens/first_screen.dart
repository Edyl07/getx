import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tuto/screens/second_screen.dart';
// import 'package:get/utils.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => SecondRoute()),
                Get.to(const SecondScreen());
              },
              child: const Text('Navigate to next screen .'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(title: 'Get Dialog');
              },
              child: const Text('Alert Dialog Button'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('Get snackBar', 'Your content');
              },
              child: const Text('Snackbar Button'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: const Icon(
                            Icons.music_note,
                            color: Colors.red,
                          ),
                          title: const Text('Music'),
                          onTap: () => {}),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                );
              },
              child: const Text('Bottom Sheet Button'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: const Text('Change theme to lightMode .'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: const Text('Change theme to darkMode .'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
