import 'package:flutter/material.dart';

class ImageSwiper extends StatelessWidget {
  const ImageSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(child: Text('dad'),color: Colors.black,),
        Container(child: Text('mom'),color: Colors.black,),
      ],
    );
  }
}