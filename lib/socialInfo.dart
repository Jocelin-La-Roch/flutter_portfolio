import 'package:flutter/material.dart';
import 'package:my_portfolio/navButton.dart';
import 'package:my_portfolio/responsiveWidget.dart';


class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavButton(
                text: "Github",
                color: Colors.blue,
                onPressed: () {},
              ),
              NavButton(
                text: "twitter",
                color: Colors.blue,
                onPressed: () {},
              ),
              NavButton(
                text: "facebook",
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Jocelin La Roch",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey
            ),
          )
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NavButton(
            text: "Github",
            color: Colors.blue,
            onPressed: () {},
          ),
          NavButton(
            text: "twitter",
            color: Colors.blue,
            onPressed: () {},
          ),
          NavButton(
            text: "facebook",
            color: Colors.blue,
            onPressed: () {},
          ),
          Text(
            "Jocelin La Roch",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}
