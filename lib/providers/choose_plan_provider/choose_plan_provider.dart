import 'package:flutter/material.dart';
import 'package:simservers/constants/app_constants.dart';

class ChoosePlanProvider extends ChangeNotifier{
  final _icon = const Icon(
      Icons.check,
      color: kPrimaryGreen,
    );
  late bool isMonthly = true;
  late bool isYearly = false;
  late bool isStarter = true;
  late bool isPower = false;
  final List _planText = [
    "All Networks"
        "Data Gifting"
        "Corporate Gifting"
        "SME Data"
        "VTU/Momo Airtime"
        "Share & Sell"
        "Sim Management"
        "Device Management"
        "USSD/SMS Management"
        "Sales Analysis"
        "Bulk Data"
        "Realtime response"
        "Secure API"
        "Webhook/Callback"
        "Support"
        "Cost per CG API Call (N1.00)"
        "Number of devices (10)"
        "Device setup fee (2000)"
        "CG set up fee (N10000)"
        "Get starter plan",
  ];
  List get plan {
    return _planText;
  }

  chooseMonthly(){
    isMonthly = true;
    isYearly = false;
    notifyListeners();
  }
  chooseYearly(){
    isMonthly = false;
    isYearly = true;
    notifyListeners();
  }
}