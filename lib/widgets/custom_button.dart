import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.orange,
        textColor: Colors.white,
        child: Text('$text'),
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}
