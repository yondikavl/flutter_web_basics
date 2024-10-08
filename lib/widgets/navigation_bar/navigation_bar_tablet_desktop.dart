import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/widgets/navbar_item/navbar_item.dart';

import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes', EpisodesRoute, Icons.videocam),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute, Icons.help),
            ],
          )
        ],
      ),
    );
  }
}
