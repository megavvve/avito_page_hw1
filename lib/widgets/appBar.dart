import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget  {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        //toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.upload),color: Colors.blue,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),color: Colors.blue,),
        ],
        title: const Text('Предложение',style: TextStyle(color: Colors.black), ),
      ),
    );
  }
  
  /*@override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);*/
}