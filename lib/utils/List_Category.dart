
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  final String title;

  const ListCategory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.greenAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.greenAccent)
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(title,style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.bold),),
        ),),
      ),
    );
  }
}