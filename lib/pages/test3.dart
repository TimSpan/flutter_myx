import 'package:flutter/material.dart';

import '../util/color.dart';

class test3 extends StatefulWidget {
  const test3({super.key});

  @override
  State<test3> createState() => _test3State();
}

class _test3State extends State<test3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text('测试3'),
      ),
      body: Container(
        child: const Text('test3'),
      ),
    );
  }
}
