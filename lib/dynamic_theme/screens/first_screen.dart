import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final themeData = GetStorage();

  @override
  Widget build(BuildContext context) {
    themeData.writeIfNull("darkmode", false);
    bool isDarkMode = themeData.read("darkmode");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx shared Preference demo'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('IcTech Innovation'),
              accountEmail: const Text('it-manager@ictech.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/ic.jpeg'),
              ),
              decoration: BoxDecoration(
                  color: isDarkMode ? Colors.black : Colors.lightBlue,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/giphy.gif'),
                      fit: BoxFit.cover)),
            ),
            SwitchListTile(
              secondary: const Icon(Icons.ac_unit),
                value: isDarkMode,
                title: const Text("Theme"),
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                  isDarkMode?Get.changeTheme(ThemeData.dark()): Get.changeTheme(ThemeData.light());
                  themeData.write('darkmode', value);
                },
                activeThumbImage: const AssetImage("assets/images/half-moon.png"),
                inactiveThumbImage: const AssetImage("assets/images/sun.png"),
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                
                )
          ],
        ),
      ),
    );
  }
}
