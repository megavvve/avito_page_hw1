import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 130,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Квартира-студия, 40м, 16/23 эт.',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text(
                  'Центр (Кировский р-н.), Очаковская, 39',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 90,
                  height: 30,
                  color: Colors.yellow,
                  padding: const EdgeInsets.only(left: 6,right: 6,top: 6,bottom: 6),
                  child: const Text(
                    '2,3 млн ₽',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
