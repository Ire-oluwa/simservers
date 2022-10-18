// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:simservers/models/new_device/new_device_data.dart';
// import 'package:simservers/widgets/new_device_tile/new_device_tile.dart';
//
// class DeviceList extends StatefulWidget {
//   const DeviceList({Key? key}) : super(key: key);
//
//   @override
//   State<DeviceList> createState() => _DeviceListState();
// }
//
// class _DeviceListState extends State<DeviceList> {
//   late int index;
//   late bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     late bool isChecked = false;
//     return SingleChildScrollView(
//       child: Consumer<NewDeviceData>(
//         builder: (BuildContext context, newDeviceData, Widget? child) {
//           return Column(
//             children: [
//               SizedBox(
//                 width: 428.0.w,
//                 height: 928.0.h,
//                 child: ListView.builder(
//                   itemBuilder: (context, index) {
//                     var device = newDeviceData.newDevice[index];
//                     return NewDeviceTile(
//                       device.isSelected,
//                       device.name,
//                       device.deviceId,
//                       const EditDeviceButton(),
//                       const AddCreditButton(),
//                           (value) {
//                         setState(() {
//                           device.isSelected = value!;
//                         });
//                           },
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
