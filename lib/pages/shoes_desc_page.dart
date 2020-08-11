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
            ),
            _ShoeColors()
          ],
        ))
      ],
    ));
  }
}

class _ShoeColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                left: 90,
                child: _ColorItem(
                  color: Color(0xff364d56),
                ),
              ),
              Positioned(
                left: 60,
                child: _ColorItem(
                  color: Color(0xff2099f1),
                ),
              ),
              Positioned(
                left: 30,
                child: _ColorItem(
                  color: Color(0xffffad29),
                ),
              ),
              _ColorItem(
                color: Color(0xffc6d642),
              ),
            ],
          )),
          CustomButton(
            text: 'More related items',
            bHight: 25,
            color: Color(0xffffc675),
          )
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  final Color color;

  const _ColorItem({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
