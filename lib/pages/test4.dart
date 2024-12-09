import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myx/util/color.dart';
import 'package:flutter_myx/widget/hi_blur.dart';

class test4 extends StatefulWidget {
  const test4({super.key});

  @override
  State<test4> createState() => _test4State();
}

class _test4State extends State<test4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // 扩展高度
                expandedHeight: 160,
                //   标题栏是否固定
                pinned: true,
                //   定义滚动空间
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  titlePadding: const EdgeInsets.only(left: 0),
                  title: _bulidHead(),
                  // background: Container(
                  //   color: primary,
                  // ),
                  background: Stack(
                    children: [
                      Positioned.fill(
                          child: CachedNetworkImage(
                        imageUrl:
                            'http://p1.music.126.net/KOR9qli1Or8D8u-8wga1KA==/109951169664486131.jpg',
                      )),
                      const Positioned.fill(
                          child: HiBlur(
                        sigma: 20,
                        child: Text(''),
                      ))
                    ],
                  ),
                ),
              )
            ];
          },
          body: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: primary,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  title: Text('测试'),
                );
              },
              itemCount: 10,
            ),
          )),
    );
  }

  _bulidHead() {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(bottom: 20, left: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: CachedNetworkImage(
              height: 45,
              width: 45,
              imageUrl:
                  'https://p2.music.126.net/l1YqDwsQIFca17F8RA-bPw==/109951168962816006.jpg',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Kevin',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
