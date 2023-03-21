import 'package:flutter/material.dart';
import 'package:intern_flutter_hw/widgets/PageView.dart';
import 'package:intern_flutter_hw/widgets/appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: const PreferredSize(child: MyAppBar(), preferredSize:Size.fromHeight(50) ),
        body: Container(padding: EdgeInsets.all(20.0),
          child: Container(
            
            
            child: ListView(
             
              children:  [
                  Container(width: 235,height: 326,child: const Placeholder(),),
                  
                  ],),
          )),
        
      )
    ;
  }
}
