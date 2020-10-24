import 'package:flutter/material.dart';
import 'package:my_portfolio/pkdot.dart';
import 'package:my_portfolio/responsiveWidget.dart';

import 'navButton.dart';


class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)?
          MainAxisAlignment.center
          :MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PKDot(),
          if(!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: [
                NavButton(
                  text: "About me",
                  onPressed:(){}
                ),
                NavButton(
                    text: "My work",
                    onPressed:(){}
                ),
                NavButton(
                    text: "Contact me",
                    onPressed:(){}
                ),
              ],
            )
        ],
      ),
    );
  }
}
