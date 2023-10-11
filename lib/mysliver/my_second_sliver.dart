import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          // 일반 위젯을 슬리버 위젯으로 변환시켜줌
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 5,
          (context, index) => Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("$index"),
            ),
          ),
        ))
      ],
    );
  }
}
