import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        height: 55,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Image(image: AssetImage("assets/icons/avito.png")),
          SizedBox(
            width: 10,
          ),
          Text(
            "Смотреть на Avito",
            style: TextStyle(fontSize: 18),
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
