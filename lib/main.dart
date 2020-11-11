import 'package:flutter/material.dart';
import 'package:my_portfolio/profilePage.dart';
import 'package:my_portfolio/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jocelin La Roch',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      initialRoute: ProfilePage.route,
      routes: {
        ProfilePage.route: (context) => ProfilePage(),
        ProjectsPage.route: (context) => ProjectsPage(),
      },
      home: ProfilePage(),
    );
  }
}
