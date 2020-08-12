import 'package:flutter/material.dart';
import 'package:shoes/widgets/shoes/custom_button.dart';

class AddToCart extends StatelessWidget {
  final double amount;

  const AddToCart({@required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Text(
            '\$$amount',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          CustomButton(
            text: 'Add to cart',
          )
        ],
      ),
    );
  }
}
