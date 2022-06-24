import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    print("看看这里来几次");
  }

  @override
  Widget build(BuildContext context) {
    print("这里会不停的来到吗");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "首页",
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text("你好啊张${index}");
        },
        itemCount: 100,
      ),
    );
  }
}
