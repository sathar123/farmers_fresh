

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Brand_row extends StatelessWidget {
  final String img;

  const Brand_row({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 10.w,
      decoration: BoxDecoration(

          image: DecorationImage(image: NetworkImage(img),fit: BoxFit.fill)),
    );
  }
}
