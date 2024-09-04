import 'package:flutter/material.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  NavBarItemTabletDesktop({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
