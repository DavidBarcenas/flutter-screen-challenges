import 'package:flutter/material.dart';

class ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      width: double.infinity,
      height: 420,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xffffcf53)),
      child: Column(
        children: [_ShoeShow()],
      ),
    );
  }
}

class _ShoeShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 20,
          right: 0,
          child: Transform.rotate(
            angle: -0.5,
            child: Container(
              width: 250,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(color: Color(0xffeaa14e), blurRadius: 40)
                  ]),
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/img/azul.png'),
        )
      ],
    );
  }
}
