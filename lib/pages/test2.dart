import 'package:flutter/material.dart';

import '../util/color.dart';

class test2 extends StatefulWidget {
  const test2({super.key});

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text('测试2'),
      ),
      body: Container(
        child: const Text('test2'),
      ),
    );
  }
}
