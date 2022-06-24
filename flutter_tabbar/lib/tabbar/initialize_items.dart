import 'package:flutter/material.dart';
import 'package:flutter_tabbar/pages/friend_page.dart';
import 'package:flutter_tabbar/pages/home_page.dart';
import 'package:flutter_tabbar/pages/keep_alive_wrapper.dart';
import 'package:flutter_tabbar/pages/mine_page.dart';

import 'bottom_bar_item.dart';

List<TYBottomBarItem> items = [
  TYBottomBarItem("home", "首页"),
  TYBottomBarItem("friend", "朋友"),
  TYBottomBarItem("mine", "我的"),
];
List<Widget> pages = [
  const KeepAliveWrapper(
    child: HomePage(),
    keepAlive: true,
  ),
  const KeepAliveWrapper(
    child: FriendPage(),
    keepAlive: true,
  ),
  const KeepAliveWrapper(
    child: MinePage(),
    keepAlive: true,
  ),
];
