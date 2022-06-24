import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabbar/tabbar/initialize_items.dart';

class TYTabBarPage extends StatefulWidget {
  @override
  State<TYTabBarPage> createState() => _TYTabBarPageState();
}

class _TYTabBarPageState extends State<TYTabBarPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_friendly), label: "朋友"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "我的"),
        ],
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
