import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 109.h,
      child: Padding(
        padding: EdgeInsets.only(top: 12, left: 16.w, right: 16.w),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Квартира-студия, 40м, 16/23 эт.',
                  style: TextStyle(fontSize: 18.h),
                )),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                  
                ),
                Text(
                  'Центр (Кировский р-н.), Очаковская, 39',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                      fontSize: 13.h),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 82.w,
                  height: 27.h,
                  color: Colors.yellow,
                  padding: EdgeInsets.only(
                      left: 5.w, right: 5.w, top: 3.h, bottom: 4.w),
                  child: Text(
                    '2,3 млн ₽',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.h),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
