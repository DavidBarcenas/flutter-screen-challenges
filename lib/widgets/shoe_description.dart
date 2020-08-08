import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title, desc;

  const ShoeDescription({@required this.title, @required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            this.desc,
            style: TextStyle(color: Colors.black54, height: 1.4),
          )
        ],
      ),
    );
  }
}
