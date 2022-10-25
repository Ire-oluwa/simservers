import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/choose_plan_provider/choose_plan_provider.dart';
import 'package:simservers/screens/sign_in/sign_in.dart';
import 'package:simservers/screens/sign_up_screen/sign_up.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({Key? key}) : super(key: key);
  static const String id = "choose plan";
  static const _icon = Icon(
    Icons.check,
    color: kPrimaryGreen,
    size: 13.0,
  );

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  final String planSubtitle =
      "Getting started is very easy, choose one of our simple and affordable subscription plans.";

  final _colour = const Color(0xFF5B5B66);
  final _fontSize = 14.43.sp;

  late bool isMonthly = true;
  late bool isYearly = false;
  late bool isStarter = true;
  late bool isPower = false;

  isMonthlyClicked() {
    setState(() {
      context.read<ChoosePlanProvider>().isMonthly = true;
      context.read<ChoosePlanProvider>().isYearly = false;
    });
  }

  isYearlyClicked() {
    setState(() {
      context.read<ChoosePlanProvider>().isMonthly = false;
      context.read<ChoosePlanProvider>().isYearly = true;
    });
  }

  @override
  void initState() {
    isMonthly = true;
    isYearly = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            // color: const Color(0xFFF5F6F8),
            padding: EdgeInsets.only(top: 33.46.h, bottom: 60.0.h),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 88.31.h,
                        width: 213.0.w,
                        child: CustomText(
                          textAlign: TextAlign.center,
                          text: "Ready to start with SimServer?",
                          softWrap: true,
                          fontSize: 22.0.sp,
                          fontWeight: FontWeight.bold,
                          colour: const Color(0xFF252525),
                        ),
                      ),
                      SizedBox(
                        height: 35.31.h,
                        width: 312.0.w,
                        child: CustomText(
                          textAlign: TextAlign.center,
                          text: planSubtitle,
                          softWrap: true,
                          fontSize: 13.0.sp,
                          colour: const Color(0xFF263238),
                        ),
                      ),
                      SizedBox(height: 27.0.h),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: isMonthlyClicked,
                            child: CustomContainer(
                              colour:
                                  context.read<ChoosePlanProvider>().isMonthly
                                      ? kSecondaryBlue
                                      : const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0.r),
                                  bottomLeft: Radius.circular(10.0.r)),
                              width: 128.0.w,
                              height: 40.0.h,
                              containerChild: Center(
                                child: CustomText(
                                  text: "Monthly",
                                  colour: context.read<ChoosePlanProvider>().isMonthly ? kWhite : kBlack,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: isYearlyClicked,
                            child: CustomContainer(
                              colour:
                                  context.read<ChoosePlanProvider>().isYearly
                                      ? kSecondaryBlue
                                      : const Color(0xFFD9D9D9),
                              width: 128.0.w,
                              height: 40.0.h,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0.r),
                                  bottomRight: Radius.circular(10.0.r),),
                              containerChild: Center(
                                child: CustomText(
                                  text: "Yearly",
                                  colour: context.read<ChoosePlanProvider>().isYearly ? kWhite : kBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27.0.h),
                      CustomContainer(
                        borderColour: const Color(0xFF170A07),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0.r),
                          topRight: Radius.circular(20.0.r),
                        ),
                        height: 686.0.h,
                        width: 253.0.w,
                        padding: EdgeInsets.only(top: 11.0.h, bottom: 30.19.h),
                        containerChild: Column(
                          children: [
                            CustomText(
                              text: context.read<ChoosePlanProvider>().isStarter
                                  ? "Starter"
                                  : "Power",
                              colour: const Color(0xFF170A07),
                              fontSize: 16.65.sp,
                            ),
                            CustomText(
                              text: context.read<ChoosePlanProvider>().isStarter
                                  ? "For Small Business"
                                  : "For Large Companies",
                              colour: const Color(0xFF616163),
                              fontSize: 12.43.sp,
                            ),
                            SizedBox(height: 8.0.h),
                            CustomText(
                              text: context.read<ChoosePlanProvider>().isStarter
                                  ? "N7,999"
                                  : "N9,999",
                              colour: const Color(0xFF170A07),
                              fontSize: 16.65.sp,
                            ),
                            CustomText(
                              text: context.read<ChoosePlanProvider>().isMonthly
                                  ? "per month"
                                  : "per year",
                              colour: const Color(0xFF616163),
                              fontSize: 10.65.sp,
                            ),
                            SizedBox(height: 9.0.h),
                            const Divider(
                              color: Color(0xFF170A07),
                              endIndent: 0.0,
                              indent: 0.0,
                              thickness: 1.0,
                            ),
                            context.read<ChoosePlanProvider>().isMonthly
                                ? (Column(
                                    children: [
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "All Networks", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Data Gifting", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Corporate Gifting", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "SME Data", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "VTU/MOMO Airtime", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Share & Sell", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Sim Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Device Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "USSD/SMS Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Sales Analysis", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Bulk Data", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Realtime Response", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Secure API", context),
                                      _buildMonthlyPlan(
                                          ChoosePlan._icon, "Support", context),
                                      _buildMonthlyPlan(
                                          SizedBox(width: 25.0.w),
                                          "Cost per CG API Call (N1.00)",
                                          context),
                                      context
                                              .read<ChoosePlanProvider>()
                                              .isStarter
                                          ? _buildMonthlyPlan(
                                              SizedBox(width: 25.0.w),
                                              "Number of devices (10)",
                                              context)
                                          : _buildMonthlyPlan(
                                              // ChoosePlan._icon,
                                              SizedBox(width: 25.0.w),
                                              "Number of devices (30)",
                                              context),
                                      _buildMonthlyPlan(SizedBox(width: 25.0.w),
                                          "Device setup fee (2000)", context),
                                      _buildMonthlyPlan(SizedBox(width: 25.0.w),
                                          "CG set up fee (N10000)", context),
                                    ],
                                  ))
                                : (Column(
                                    children: [
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "All Networks", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Data Gifting", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Corporate Gifting", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "SME Data", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "VTU/MOMO Airtime", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Share & Sell", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Sim Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Device Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "USSD/SMS Management", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Sales Analysis", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Bulk Data", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Realtime Response", context),
                                      _buildMonthlyPlan(ChoosePlan._icon,
                                          "Secure API", context),
                                      _buildMonthlyPlan(
                                          ChoosePlan._icon, "Support", context),
                                      _buildMonthlyPlan(
                                          SizedBox(width: 25.0.w),
                                          "Cost per CG API Call (N1.00)",
                                          context),
                                      context
                                              .read<ChoosePlanProvider>()
                                              .isStarter
                                          ? _buildMonthlyPlan(
                                              SizedBox(width: 25.0.w),
                                              "Number of devices (10)",
                                              context)
                                          : _buildMonthlyPlan(
                                              // ChoosePlan._icon,
                                              SizedBox(width: 25.0.w),
                                              "Number of devices (30)",
                                              context),
                                      _buildMonthlyPlan(SizedBox(width: 25.0.w),
                                          "Device setup fee (2000)", context),
                                      _buildMonthlyPlan(SizedBox(width: 25.0.w),
                                          "CG set up fee (N10000)", context),
                                    ],
                                  )),
                          ],
                        ),
                      ),
                      SizedBox(height: 17.0.h),
                      context.read<ChoosePlanProvider>().isStarter
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      context
                                          .read<ChoosePlanProvider>()
                                          .isStarter = false;
                                    });
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _buildBankDetailsDialog(context);
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.arrow_back_ios),
                                ),
                                CustomTextButton(
                                  title: "Get Power Plan",
                                  onClick: () {
                                    setState(() {
                                      context
                                          .read<ChoosePlanProvider>()
                                          .isStarter = false;
                                    });
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _buildBankDetailsDialog(context);
                                      },
                                    );
                                  },
                                  backgroundColour: kSecondaryBlue,
                                  height: 40.0.h,
                                  width: 130.0.w,
                                  textColour: kWhite,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomTextButton(
                                  title: "Get Starter Plan",
                                  onClick: () {
                                    setState(() {
                                      context
                                          .read<ChoosePlanProvider>()
                                          .isStarter = true;
                                    });
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _buildBankDetailsDialog(context);
                                      },
                                    );
                                  },
                                  backgroundColour: kSecondaryBlue,
                                  height: 40.0.h,
                                  width: 130.0.w,
                                  textColour: kWhite,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      context
                                          .read<ChoosePlanProvider>()
                                          .isStarter = true;
                                    });
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _buildBankDetailsDialog(context);
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildMonthlyPlan(icon, text, context) {
  return Center(
    child: SizedBox(
      height: 26.0.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 10.0.w),
          SizedBox(
            height: 19.0.h,
            width: 140.0.w,
            child: CustomText(
              text: text,
              fontSize: 12.0.sp,
            ),
          ),
        ],
      ),
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
                      Navigator.pushNamed(context, SignUpScreen.id);
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
    actionsPadding: const EdgeInsets.all(0.0),
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
