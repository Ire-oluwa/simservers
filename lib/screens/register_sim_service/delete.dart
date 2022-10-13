import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delete extends StatefulWidget {
  const Delete({Key? key}) : super(key: key);
  static const String id = "delete";

  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 21.0.w, top: 19.0.h, right: 20.0.w),
      child: const Center(
        child: Text("Potter"),
      ),
    );
  }
}
