import 'package:flutter/material.dart';

class ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      width: double.infinity,
      height: 415,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xffffcf53)),
      child: Column(
        children: [_ShoeShow(), _ShoeSizes()],
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

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ShoeSizeBox(
          size: 7,
        ),
        _ShoeSizeBox(
          size: 7.5,
        ),
        _ShoeSizeBox(
          size: 8,
        ),
        _ShoeSizeBox(
          size: 8.5,
        ),
        _ShoeSizeBox(
          size: 9,
        ),
        _ShoeSizeBox(
          size: 9.5,
        ),
      ],
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  final double size;
  const _ShoeSizeBox({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: (this.size == 9) ? Color(0xfff1a23a) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (this.size == 9)
              BoxShadow(
                  color: Color(0xfff1a23a),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
      child: Text(
        '${size.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: (this.size == 9) ? Colors.white : Color(0xffeaa14e),
            fontWeight: FontWeight.w700,
            fontSize: 16),
      ),
    );
  }
}
