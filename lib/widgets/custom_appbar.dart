import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({@required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: double.infinity,
        child: Row(
          children: [
            Text(this.text,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            Spacer(),
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
