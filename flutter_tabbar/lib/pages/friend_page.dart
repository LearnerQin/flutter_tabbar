import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("朋友"),
      ),
      body: const Center(
        child: Text("这是一个朋友界面"),
      ),
    );
  }
}
