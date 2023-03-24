import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescribeWidget extends StatelessWidget {
  const DescribeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 186.h,
      width: 375.w,
      padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Описание',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
              'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',style: TextStyle(
                fontSize: 12.h,
                height: 1.4.h
              ),),
           SizedBox(
            height: 7.h,
          ),
          Row(children:  [
            Icon(
              Icons.keyboard_arrow_down,
              size: 24.h,
              color: Colors.blue,
            ),
            Text(
              'Подробнее',
              style: TextStyle(
                  fontSize: 16.h,
                  color: Colors.blue,
                  fontWeight: FontWeight.w300),
            )
          ]),
        ],
      ),
    );
  }
}
