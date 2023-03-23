import 'package:flutter/material.dart';

class AspectsWidget extends StatelessWidget {
  const AspectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Характеристики',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Об объекте',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
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
                Row(children: const [
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 28,
                    color: Colors.blue,
                  ),
                  Text(
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
          size: 26,
        ),
        const SizedBox(width: 15),
        Expanded(
            child: Text(
          name,
          style: TextStyle(fontSize: 18),
        )),
        Text(text, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
