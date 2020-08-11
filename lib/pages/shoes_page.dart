import 'package:flutter/material.dart';
import 'package:shoes/widgets/custom_widgets.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: CustomAppBar(text: 'For you')
        body: Column(
      children: [
        CustomAppBar(text: 'For you'),
        Expanded(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoeSize(),
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    desc:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              )),
        ),
        AddToCart(amount: 180.0)
      ],
    ));
  }
}
