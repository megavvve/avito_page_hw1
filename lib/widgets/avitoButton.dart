import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://www.avito.ru/');

class AvitoButtonWidget extends StatelessWidget {
  const AvitoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 11.h, bottom: 11.h),
        height: 44.h,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Image(image: AssetImage("assets/icons/avito.png")),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Смотреть на Avito",
            style: TextStyle(fontSize: 18.h),
          ),
        ]),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
