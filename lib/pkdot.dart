import 'package:flutter/material.dart';


class PKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "JLR",
          textScaleFactor: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(width: 5,),
        AnimatedContainer(
          duration: Duration(seconds: 2),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange,
          ),
        )
      ],
    );
  }
}
