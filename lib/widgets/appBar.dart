import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.upload,
            color: Colors.blue,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.blue,
          ),
        ],
        title: const Text(
          'Предложение',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
