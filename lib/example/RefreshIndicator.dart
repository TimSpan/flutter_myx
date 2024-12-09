import 'package:flutter/material.dart';
import 'package:flutter_myx/util/color.dart';

class Refresh_Indicator extends StatefulWidget {
  const Refresh_Indicator({super.key});

  @override
  State<Refresh_Indicator> createState() => _Refresh_IndicatorState();
}

class _Refresh_IndicatorState extends State<Refresh_Indicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('下拉刷新示例'),
        backgroundColor: primary,
      ),
      body: RefreshIndicator(
        // backgroundColor: Colors.white54, //圈圈背景色
        color: primary, //转圈的颜色
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('测试'),
            );
          },
        ),
        onRefresh: () async {
          //将此延迟替换为刷新期间执行的代码
          //当代码完成执行时返回一个Future。
          return Future<void>.delayed(const Duration(seconds: 1));
        },
      ),
    );
  }
}
