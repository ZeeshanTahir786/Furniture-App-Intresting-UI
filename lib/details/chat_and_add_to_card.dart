import 'package:flutter/material.dart';
import 'package:furnitureapp/constants.dart';

class ChatAndAddToCard extends StatelessWidget {
  const ChatAndAddToCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Color(0xFFFCBF1E), borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          Icon(
            Icons.add_shopping_cart,
            color: Colors.white,
            size: 25,
          ),
          Text(
            'Add To Card',
            style: TextStyle(color: Colors.white),
          ),
//              FlatButton.icon(
//                onPressed: () {},
//                icon: Icon(Icons.add_shopping_cart),
//                label: Text('Add To Card'),
//              ),
        ],
      ),
    );
  }
}
