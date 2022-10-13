import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewDevices extends StatefulWidget {
  const AddNewDevices({Key? key}) : super(key: key);
  static const String id = "add new devices";

  @override
  State<AddNewDevices> createState() => _AddNewDevicesState();
}

class _AddNewDevicesState extends State<AddNewDevices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 21.0.w, top: 19.0.h, right: 20.0.w),
      child: Text("Hi"),
    );
  }
}
