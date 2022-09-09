import 'package:flutter/material.dart';

class RedesSociales extends StatelessWidget {
  const RedesSociales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Image.asset('assets/facebook.png', height: 40)),
        GestureDetector(
            onTap: () {}, child: Image.asset('assets/search.png', height: 40)),
        GestureDetector(
            onTap: () {}, child: Image.asset('assets/twitter.png', height: 40)),
      ],
    );
  }
}
