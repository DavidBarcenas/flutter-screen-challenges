import 'package:flutter/material.dart';
import 'package:shoes/widgets/custom_widgets.dart';

class ShoeDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            ShoeSize(fullScreen: true),
            Positioned(
                top: 40,
                // left: 20,
                child: FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {},
                ))
          ],
        ),
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
            _ShoeColors(),
            _ButtonsCTA()
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
      margin: EdgeInsets.only(top: 5, bottom: 30),
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

class _ButtonsCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Container(
      width: (size * 0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ItemCTA(Icon(Icons.star), 'like'),
          _ItemCTA(Icon(Icons.add_shopping_cart), 'cart'),
          _ItemCTA(Icon(Icons.wb_sunny), 'settings')
        ],
      ),
    );
  }
}

class _ItemCTA extends StatelessWidget {
  final Icon icon;
  final String type;

  const _ItemCTA(this.icon, this.type);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {},
        child: icon,
        backgroundColor: Colors.white,
        foregroundColor: (this.type == 'like')
            ? Colors.redAccent
            : Colors.grey.withOpacity(0.4),
      ),
    );
  }
}
