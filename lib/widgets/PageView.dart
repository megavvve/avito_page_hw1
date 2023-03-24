import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSwiper extends StatefulWidget {
  const ImageSwiper({super.key});
  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  int _numPage = 1;

  // ignore: non_constant_identifier_names
  void _ChangePage() {
    setState(() {
      _numPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(left: 15.w, right: 14.w),
      //padding: EdgeInsets.only(top: 16.h),
      width: 346.w,
      height: 235.h,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              _numPage = index;
              _ChangePage();
            },
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Image.asset('assets/images/image2.jpg'),
              Image.asset('assets/images/image1.jpg'),
              Image.asset('assets/images/image3.jpg'),
              Image.asset('assets/images/image4.jpg'),
              Image.asset('assets/images/image5.jpg'),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.85),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black.withOpacity(0.5),
              ),
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 11, right: 13),
              child: RichText(
                text: TextSpan(
                    text: _numPage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '/5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
