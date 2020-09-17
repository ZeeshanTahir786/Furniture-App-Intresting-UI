import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.onPress,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: 160.0,
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        // color: Colors.blueAccent,
        child: Hero(
          tag: product.id,
          child: InkWell(
            onTap: onPress,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 136.0,
                  decoration: BoxDecoration(
                      color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                      borderRadius: BorderRadius.circular(22.0),
                      boxShadow: [kDefaultShadow]),
                  child: Container(
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0)),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 160.0,
                    width: 200,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: SizedBox(
                      height: 136,
                      width: size.width - 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Text(
                              product.title,
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding * 1.5,
                                vertical: kDefaultPadding / 4),
                            decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(22),
                                    bottomLeft: Radius.circular(22))),
                            child: Text(
                              '\$${product.price}',
                              style: Theme.of(context).textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
