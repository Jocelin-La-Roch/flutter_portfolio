import 'package:flutter/material.dart';
import 'package:my_portfolio/pkdot.dart';
import 'package:my_portfolio/profileInfo.dart';
import 'package:my_portfolio/project.dart';
import 'package:my_portfolio/projects.dart';
import 'package:my_portfolio/responsiveWidget.dart';
import 'package:my_portfolio/socialInfo.dart';

import 'navButton.dart';
import 'navHeader.dart';


class ProfilePage extends StatelessWidget {
  static const String route = '/profilPage';
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: ResponsiveWidget.isSmallScreen(context)?
        AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: PKDot(),
          centerTitle: true,
        ) :
        AppBar(
          backgroundColor: Colors.black,
          title: PKDot(),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavButton(
                text: "About me",
                onPressed:(){},
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavButton(
                  text: "My work",
                  onPressed:() {Navigator.of(context).pushNamed(ProjectsPage.route);},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 100, top: 10),
              child: NavButton(
                text: "Contact me",
                onPressed:(){},
              ),
            ),
          ],
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)?
            Drawer(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: [
                  NavButton(
                      text: "About me",
                      onPressed:(){}
                  ),
                  NavButton(
                    text: "My work",
                    onPressed:() {Navigator.of(context).pushNamed(ProjectsPage.route);},
                  ),
                  NavButton(
                      text: "Contact me",
                      onPressed:(){}
                  ),
                ],
              ),
            )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.03),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //NavHeader(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1),
                  ProfileInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.2),
                  RaisedButton(
                    onPressed:() {Navigator.of(context).pushNamed(ProjectsPage.route);},
                    shape: StadiumBorder(),
                    child: Text("Resume"),
                    color: Colors.red,
                    padding: EdgeInsets.all(10.0),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.2),
                  Project(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.2),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
