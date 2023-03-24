import 'package:flutter/material.dart';
import 'package:intern_flutter_hw/widgets/PageView.dart';
import 'package:intern_flutter_hw/widgets/appBar.dart';
import 'package:intern_flutter_hw/widgets/aspects.dart';
import 'package:intern_flutter_hw/widgets/avitoButton.dart';
import 'package:intern_flutter_hw/widgets/describe.dart';
import 'package:intern_flutter_hw/widgets/title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 830),
      builder: (BuildContext context, child) => MaterialApp(
        title: 'My App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 240, 240),
      appBar: const MyAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 19.h,
          ),
          const ImageSwiper(),
          const TitleWidget(),
          SizedBox(
            height: 10.h,
          ),
          const DescribeWidget(),
          SizedBox(
            height: 10.h,
          ),
          const AspectsWidget(),
          SizedBox(
            height: 10.h,
          ),
          const AvitoButtonWidget(),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
