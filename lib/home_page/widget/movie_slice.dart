import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class MovieSlice extends StatelessWidget {
  const MovieSlice({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _pathImg = [
      "lib/apps/assets/image/avenger.jpg",
      "lib/apps/assets/image/exhuma.jpg",
      "lib/apps/assets/image/kingfupanda.jpg",
    ];
    return Container(
        height: 380,
        width: 280,
        child: Swiper(
          itemBuilder: (context, index) {
            return Image.network(
              _pathImg[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: 2,
          viewportFraction: 0.8,
          scale: 0.9,
        ));
  }
}
