import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double bHight;
  final Color color;

  const CustomButton(
      {@required this.text, this.bHight, this.color = Colors.orange});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.bHight,
      child: FlatButton(
        color: this.color,
        textColor: Colors.white,
        child: Text('$text'),
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}
