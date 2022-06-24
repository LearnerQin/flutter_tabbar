import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TYBottomBarItem extends BottomNavigationBarItem {
  TYBottomBarItem(String iconName, String title)
      : super(
            label: title,
            icon: Image.asset(
              "$iconName.png",
              width: 32,
              gaplessPlayback: true,
            ),
            activeIcon: Image.asset(
              "${iconName}_active.png",
              width: 32,
              gaplessPlayback: true,
            ));
}

class TYBottomBarItemByCustom extends BottomNavigationBarItem {
  TYBottomBarItemByCustom(Widget icon, Widget activeIcon, String title)
      : super(label: title, icon: icon, activeIcon: activeIcon);
}
