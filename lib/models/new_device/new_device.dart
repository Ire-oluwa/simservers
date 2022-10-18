import 'package:flutter/material.dart';

class NewDevice {
  NewDevice(this.name, this.deviceId, this.editDevice, this.addCredit,
      {this.isSelected = false});

  final String name;
  final String deviceId;
  late bool isSelected;
  final Widget editDevice;
  final Widget addCredit;

  void toggleDone() {
    isSelected = !isSelected;
  }
}
