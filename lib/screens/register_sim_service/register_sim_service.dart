import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/register_sim_service/add_new_devices.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class RegisterSimService extends StatefulWidget {
  const RegisterSimService({Key? key}) : super(key: key);
  static const String id = "register sim device";

  @override
  State<RegisterSimService> createState() => _RegisterSimServiceState();
}

class _RegisterSimServiceState extends State<RegisterSimService> {
  final _deviceNameController = TextEditingController();
  final _deviceKeyController = TextEditingController();
  final _simBalanceController = TextEditingController();
  final _devicePinController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 24.0.sp),
            color: kBlack,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          title: const CustomText(
            text: "Register Sim Service",
            colour: kBlack,
            fontWeight: FontWeight.w500,
          ),
          bottom: _buildTabBar(context),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: kUnfocus,
          child: const Center(
            child: TabBarView(
              children: [
                Center(child: Text("data")),
                Center(child: Text("data")),
                Center(child: Text("data")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildTabBar(BuildContext context) {
  return TabBar(
    indicatorColor: Colors.transparent,
    tabs: [
      CustomTextButton(
        backgroundColour: const Color(0xFF20B45B),
        height: 40.0.h,
        width: 160.0.w,
        title: "Add device",
        //TODO: pop-up to add device.
        onClick: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                content: SingleChildScrollView(
                  child: SizedBox(
                    height: 575.0.w,
                    width: 354.96.w,
                    child: AddNewDeviceColumn(deviceNameController:,),
                  ),
                ),
              );
            },
          );
        },

      ),
      CustomTextButton(
        height: 40.0.h,
        width: 160.0.w,
        title: "Reset",
        //TODO: pop-up to reset settings.
        onClick: () {
          AlertDialog();
        },
        backgroundColour: const Color(0xFF5A9FFC),
      ),
      CustomTextButton(
        height: 40.0.h,
        width: 160.0.w,
        title: "Delete",
        //TODO: pop-up to delete device.
        onClick: () {
          AlertDialog();
        },
        backgroundColour: const Color(0xFFFE7062),
      ),
    ],
  );
}
