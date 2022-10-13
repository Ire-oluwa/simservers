import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);
  static const String id = "reset";

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 21.0.w, top: 19.0.h, right: 20.0.w),
      child: const Center(
        child: Text("Mr"),
      ),
    );
  }
}
