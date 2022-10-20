import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/register_sim_service/add_new_devices.dart';
import 'package:simservers/screens/register_sim_service/delete_device.dart';
import 'package:simservers/screens/register_sim_service/reset_device.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class ActivateCloudServices extends StatefulWidget {
  const ActivateCloudServices({Key? key}) : super(key: key);

  @override
  State<ActivateCloudServices> createState() => _ActivateCloudServicesState();
}

class _ActivateCloudServicesState extends State<ActivateCloudServices> {
  final _deviceNameController = TextEditingController();
  final _deviceKeyController = TextEditingController();
  final _simBalanceController = TextEditingController();
  final _devicePinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: kBlack),
        ),
        title: CustomText(
          text: "Activate Cloud Services",
          fontSize: 16.0.sp,
          colour: kBlack,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(color: kBlack, thickness: 1.0.h, indent: 0.0, endIndent: 0.0),
          SizedBox(height: 18.75.h),
          _buildTabBar(context, _deviceNameController, _deviceKeyController,
              _simBalanceController, _devicePinController),
          SizedBox(height: 18.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Mtn data cloud",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Glo cloud",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Airtel corporate gifting 1",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Airtel corporate gifting 2",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Mtn corporate gifting",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding:
                EdgeInsets.only(left: 11.0.w, right: 30.0.w, bottom: 2.0.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Airtel cloud",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(left: 11.0.w, right: 30.0.w),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return _buildBankDetailsDialog(context);
                    });
              },
              child: CustomContainer(
                boxShadowColour: kWhite,
                padding: EdgeInsets.only(left: 52.94.w, top: 17.64),
                height: 53.86.h,
                width: 387.0.w,
                containerChild: CustomText(
                  text: "Mtn sme cloud",
                  colour: kBlack,
                  fontSize: 12.62.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildTabBar(BuildContext context, deviceNameController,
    deviceKeyController, simBalanceController, devicePinController) {
  return Padding(
    padding: EdgeInsets.only(left: 19.0.w, right: 30.0.w),
    child: Row(
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
                return Delete(onClick: () {},);
              },
            );
          },
          backgroundColour: const Color(0xFFFE7062),
        ),
      ],
    ),
  );
}

Widget _buildBankDetailsDialog(context) {
  return AlertDialog(
    contentPadding: const EdgeInsets.all(0.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0.r)),
    content: SizedBox(
      height: 483.0.h,
      width: 330.0.w,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.w, top: 10.0.h, right: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 27.49.h,
                    ),
                  ),
                ],
              ),
              CustomText(
                text: "Kindly note that N50 bank charges\napplies",
                colour: const Color(0xFF100D40),
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 10.0.h,
              ),
              CustomText(
                text: "Pay into any of the accounts\nlisted below",
                colour: const Color(0xFF100D40),
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 20.0.h),
                child: Divider(
                  thickness: 1.0.h,
                  color: const Color(0xFF100D40),
                ),
              ),
              CustomText(
                text: "WEMA Bank",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.bold,
                fontSize: 14.0.sp,
              ),
              CustomText(
                text: "Bank name: Conceptdelapaix\nAccount number: 8576236995",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.w600,
                fontSize: 12.0.sp,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 20.0.h),
                child: Divider(
                  thickness: 1.0.h,
                  color: const Color(0xFF100D40),
                ),
              ),
              CustomText(
                text: "MONIEPOINT MICROFINANCE Bank",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.bold,
                fontSize: 14.0.sp,
              ),
              CustomText(
                text: "Bank name: Conceptdelapaix\nAccount number: 6184746506",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.w600,
                fontSize: 12.0.sp,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 20.0.h),
                child: Divider(
                  thickness: 1.0.h,
                  color: const Color(0xFF100D40),
                ),
              ),
              CustomText(
                text: "GT World PLC",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.bold,
                fontSize: 14.0.sp,
              ),
              CustomText(
                text:
                    "Bank name: Adedokun Peace\nOlugbenga\nAccount number: 0050785936",
                colour: const Color(0xFF333333),
                fontWeight: FontWeight.w600,
                fontSize: 12.0.sp,
              ),
            ],
          ),
        ),
      ),
    ),
    actionsPadding: EdgeInsets.all(0.0),
    actions: [
      CustomContainer(
        height: 107.0.h,
        width: 330.0.w,
        colour: const Color(0xFF7168F6),
        borderRadius: BorderRadius.circular(20.0.r),
        padding: EdgeInsets.only(left: 14.0.w, top: 22.0.h),
        containerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Please send proof of payment",
              colour: kWhite,
              fontSize: 14.0.sp,
            ),
            Row(
              children: [
                CustomText(
                  text: "to ",
                  colour: kWhite,
                  fontSize: 14.0.sp,
                ),
                CustomText(
                  text: "07017770798  ",
                  colour: kWhite,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(height: 7.0.h),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.headset,
                  color: kWhite,
                ),
                CustomText(
                  text: " 07017770798  ",
                  colour: kWhite,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
