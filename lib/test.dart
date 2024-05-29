import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  List<String> _pathImg = [
    "lib/apps/assets/image/avenger.jpg",
    "lib/apps/assets/image/exhuma.jpg",
    "lib/apps/assets/image/kungfupanda.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 380,
          width: 280,
          child: Swiper(
            itemBuilder: (context, index) {
              return Image.network(
                _pathImg[1],
                fit: BoxFit.fill,
              );
            },
            itemCount: 2,
            viewportFraction: 0.8,
            scale: 0.9,
          )),
    );
  }
}
