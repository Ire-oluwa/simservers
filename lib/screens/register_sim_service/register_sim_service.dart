import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/new_device/new_device_data.dart';
import 'package:simservers/screens/register_sim_service/add_new_devices.dart';
import 'package:simservers/screens/register_sim_service/delete_device.dart';
import 'package:simservers/screens/register_sim_service/reset_device.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';
import 'package:simservers/widgets/new_device_list/new_device_list.dart';
import 'package:simservers/widgets/new_device_tile/new_device_tile.dart';

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
  late int index;
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: kUnfocus,
        child: Container(
          width: 428.0.w,
          height: 926.0.h,
          padding: EdgeInsets.only(left: 29.0.w, right: 30.0.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  child: Divider(thickness: 2.0.h),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.75.h),
                  child: _buildTabBar(
                      context,
                      _deviceNameController,
                      _deviceKeyController,
                      _simBalanceController,
                      _devicePinController),
                ),
                Consumer<NewDeviceData>(
                  builder: (BuildContext context, newDeviceData, Widget? child) {
                    return SizedBox(
                      width: 428.0.w,
                      height: 928.0.h,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          var device = newDeviceData.newDevice[index];
                          return NewDeviceTile(
                            device.isSelected,
                            device.name,
                            device.deviceId,

                            const EditDeviceButton(),
                            const AddCreditButton(),
                                (value) {
                              setState(() {
                                device.isSelected = value!;
                              });

                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildTabBar(BuildContext context, deviceNameController,
    deviceKeyController, simBalanceController, devicePinController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomTextButton(
        textColour: kWhite,
        backgroundColour: const Color(0xFF20B45B),
        height: 40.0.h,
        width: 113.0.w,
        title: "Add device",
        //TODO: pop-up to add device.
        onClick: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                width: 293.52.w,
                height: 127.0.h,
                child: AlertDialog(
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  content: SingleChildScrollView(
                    child: SizedBox(
                      height: 575.0.w,
                      width: 354.96.w,
                      child: AddNewDeviceColumn(
                        deviceNameController: deviceNameController,
                        deviceKeyController: deviceKeyController,
                        simBalanceController: simBalanceController,
                        devicePinController: devicePinController,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      CustomTextButton(
        height: 40.0.h,
        width: 113.0.w,
        title: "Reset",
        textColour: kWhite,
        //TODO: pop-up to reset settings.
        onClick: () {
          showDialog(
            context: context,
            builder: (context) {
              return const Reset();
            },
          );
        },
        backgroundColour: const Color(0xFF5A9FFC),
      ),
      CustomTextButton(
        textColour: kWhite,
        height: 40.0.h,
        width: 113.0.w,
        title: "Delete",
        //TODO: pop-up to delete device.
        onClick: () {
          showDialog(
            context: context,
            builder: (context) {
              return Delete();
            },
          );
        },
        backgroundColour: const Color(0xFFFE7062),
      ),
    ],
  );
}
