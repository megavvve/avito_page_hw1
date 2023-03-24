import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AspectsWidget extends StatelessWidget {
  const AspectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 233.h,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Характеристики',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.h),
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              'Об объекте',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12.h),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(children: [
                const AspectWidgetRow(
                    icon: Icons.border_outer,
                    name: "Планировка",
                    text: "Смежная"),
                const Divider(thickness: 0.1, color: Colors.black),
                const AspectWidgetRow(
                    icon: Icons.border_top,
                    name: "Высота потолков",
                    text: "От 2,5 м"),
                const Divider(thickness: 0.1, color: Colors.black),
                const AspectWidgetRow(
                    icon: Icons.build, name: "Ремонт", text: "Без ремонта"),
                const Divider(thickness: 0.1, color: Colors.black),
                Row(children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 24.w,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Подробнее',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.w300),
                  )
                ]),
              ]),
            )
          ],
        ));
  }
}

class AspectWidgetRow extends StatelessWidget {
  final IconData icon;
  final String name;
  final String text;

  const AspectWidgetRow({
    super.key,
    required this.icon,
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          size: 24.h,
        ),
        SizedBox(width: 10.w),
        Expanded(
            child: Text(
          name,
          style: TextStyle(fontSize: 15.h),
        )),
        Text(text, style: TextStyle(fontSize: 16.h)),
      ],
    );
  }
}
