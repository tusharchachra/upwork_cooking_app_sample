import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static final selectedDecoration = BoxDecoration(
    color: Colors.black,
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.all(
      Radius.circular(10.r),
    ),
  );

  static final List<BoxDecoration> unselectedDecoration = [
    BoxDecoration(
      gradient:
          const LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent]),
      border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
    BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.purple, Colors.pink]),
      border: Border.all(color: Colors.blueAccent),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
    BoxDecoration(
      gradient:
          const LinearGradient(colors: [Colors.lightGreen, Colors.greenAccent]),
      border: Border.all(color: Colors.black87),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
    BoxDecoration(
      gradient: const LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.redAccent]),
      border: Border.all(color: Colors.purple),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
    BoxDecoration(
      gradient: const LinearGradient(
          colors: [Colors.purple, Colors.deepPurpleAccent]),
      border: Border.all(color: Colors.yellowAccent),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
    BoxDecoration(
      gradient: const LinearGradient(
          colors: [Colors.orange, Colors.deepOrangeAccent]),
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.all(
        Radius.circular(10.r),
      ),
    ),
  ];
}
