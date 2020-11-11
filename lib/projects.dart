import 'package:flutter/material.dart';
import 'package:my_portfolio/profilePage.dart';


class ProjectsPage extends StatelessWidget {
  static const String route = '/projectsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: RaisedButton(
          onPressed:() {Navigator.of(context).pushNamed(ProfilePage.route);},
          shape: StadiumBorder(),
          child: Text("Resume"),
          color: Colors.red,
          padding: EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
