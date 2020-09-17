import 'package:flutter/material.dart';

import '../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
          Image.asset(
            image,
            height: size.width * 0.7,
            width: size.width * 0.7,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
