import 'package:flutter/material.dart';
import 'package:flutter_myx/example/RefreshIndicator.dart';
import 'package:flutter_myx/util/color.dart';
import 'package:get/get.dart';

class test1 extends StatefulWidget {
  const test1({super.key});

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          title: const Text('测试1'),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Column(
                children: [
                  MaterialButton(
                    color: primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    height: 45,
                    onPressed: () => Get.to(() => const Refresh_Indicator(),
                        transition: Transition.native),
                    child: const Text('下拉刷新示例'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: const Text('下拉刷新示例'))
                ],
              ),
            )));
  }
}
