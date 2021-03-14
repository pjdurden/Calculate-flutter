import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        color:   kButtonBackground.withOpacity(0.2),
    ),
  );
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    this.backgroundColor = Colors.transparent,
    this.textColor = kTextColorBlack,
    @required this.text,
    @required this.press,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(0.2),
        padding: const EdgeInsets.all(0.2),
        decoration: myBoxDecoration(),

        child: FlatButton(
          color: backgroundColor,
          padding: EdgeInsets.all(30),
          onPressed: press,
          child: Text(
            "$text",
            style: TextStyle(
              color: textColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
