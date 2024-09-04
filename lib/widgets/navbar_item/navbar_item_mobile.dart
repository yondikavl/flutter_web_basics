import 'package:flutter/material.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;
  NavBarItemMobile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
