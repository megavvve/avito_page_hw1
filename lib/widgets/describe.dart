import 'package:flutter/material.dart';

class DescribeWidget extends StatelessWidget {
  const DescribeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      padding: const EdgeInsets.all(16),
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
          const Text(
              'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.'),
          const SizedBox(
            height: 10,
          ),
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
        ],
      ),
    );
  }
}
