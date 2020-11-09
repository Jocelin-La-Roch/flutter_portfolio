import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveWidget.dart';


class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Card(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("jlr.jpg", height: 300, width: MediaQuery.of(context).size.width * 0.3, fit: BoxFit.cover,),
                  Text("Project name"),
                  Text("Project name"),
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Card(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("jlr.jpg", height: 300, width: MediaQuery.of(context).size.width * 0.3, fit: BoxFit.cover,),
                  Text("Project name"),
                  Text("Project name"),
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Card(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("jlr.jpg", height: 300, width: MediaQuery.of(context).size.width * 0.3, fit: BoxFit.cover,),
                  Text("Project name"),
                  Text("Project name"),
                ],
              ),
            ),
          ),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Card(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("jlr.jpg", height: 300, width: MediaQuery.of(context).size.width * 0.6, fit: BoxFit.cover,),
                  Text("Project name"),
                  Text("Project name"),
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Card(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("jlr.jpg", height: 300, width: MediaQuery.of(context).size.width * 0.6, fit: BoxFit.cover,),
                  Text("Project name"),
                  Text("Project name"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
