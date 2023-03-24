
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: 90.w,
      child:  AppBar(
          
          backgroundColor: Colors.white,
          centerTitle: true,
          
          actions:  [
            const Icon(
              Icons.upload,
              color: Colors.blue,
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.blue,
            ),
            SizedBox(width: 16.w,)
          ],
          title: const Text(
            'Предложение',
            style: TextStyle(color: Colors.black),
          ),
        ),
      
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
