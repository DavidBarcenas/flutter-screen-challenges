import 'package:flutter/material.dart';
import 'package:shoes/widgets/custom_widgets.dart';

class ShoeDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ShoeSize(fullScreen: true),
        Expanded(
            child: Column(
          children: [
            ShoeDescription(
              title: 'Nike Air Max 720',
              desc:
                  "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    '\$180.0',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CustomButton(
                    text: 'Buy now',
                  )
                ],
              ),
            )
          ],
        ))
      ],
    ));
  }
}
