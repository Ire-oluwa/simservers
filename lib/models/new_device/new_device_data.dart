import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/new_device/new_device.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class NewDeviceData extends ChangeNotifier {
  late final List<NewDevice> _newDevice = [
    NewDevice(
      "Suleiman",
      "3234",
      CustomTextButton(
        title: "Edit device",
        onClick: () {},
        backgroundColour: Colors.transparent,
        height: 17.0.h,
        width: 80.0.w,
        textColour: Colors.black38,
      ),
      CustomTextButton(
          title: "Add credit",
          onClick: () {},
          backgroundColour: Colors.transparent,
          height: 17.0.h,
          width: 80.0.w,
          textColour: Colors.black38),
    ),
  ];

  UnmodifiableListView<NewDevice> get newDevice {
    return UnmodifiableListView(_newDevice);
  }

  int get deviceCount {
    return _newDevice.length;
  }

  void addDevice(String deviceName, String deviceId) {
    final device = NewDevice(
      deviceName,
      deviceId,
      const EditDeviceButton(),
      const AddCreditButton(),
    );
    _newDevice.add(device);
    notifyListeners();
  }

  // void editDevice(NewDevice device){
  //   _newDevice.
  // }

  void deleteDevice(NewDevice device) {
    _newDevice.remove(device);
  }
}

class AddCreditButton extends StatelessWidget {
  const AddCreditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CustomText(
        text: "Add credit",
        colour: kBlack,
        fontSize: 10.94.sp,
      ),
    );
  }
}

class EditDeviceButton extends StatelessWidget {
  const EditDeviceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CustomText(
        text: "Edit device",
        colour: kBlack,
        fontSize: 10.94.sp,
      ),
    );
  }
}
