import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("我的"),
      ),
      body: const Center(
        child: Text("这是一个我的页面"),
      ),
    );
  }
}
