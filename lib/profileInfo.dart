import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveWidget.dart';


class ProfileInfo extends StatelessWidget {

  profileImage (context) => AnimatedContainer(
    duration: Duration(seconds: 1),
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.25
        : MediaQuery.of(context).size.width * 0.25,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.25
        : MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.deepOrangeAccent,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage("jlr.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover
        )
    ),
  );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hi There, my name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.deepOrange),
      ),
      Text(
        "JOCELIN LA ROCH",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10,),
      Text(
        "A flutter developper",
        textScaleFactor: 1.5,
        softWrap: true,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed:() {},
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.red,
            padding: EdgeInsets.all(10.0),
          ),
          SizedBox(width: 20.0,),
          OutlineButton(
            onPressed: () {},
            borderSide: BorderSide(
                color: Colors.red
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Colors.red,
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profileImage(context),
          profileData,
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileImage(context),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          profileData,
        ],
      ),
    );
  }
}
