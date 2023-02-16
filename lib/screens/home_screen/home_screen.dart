import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/activate_cloud_service/activate_cloud_service.dart';
import 'package:simservers/screens/register_sim_service/register_sim_service.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/widgets/add_api/add_api.dart';
import 'package:simservers/widgets/app_bar/app_bar.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';
import 'package:simservers/widgets/quick_option_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, 0),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF4F7FB),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 60.0.h),
                  height: 270.0.h,
                  width: 428.0.w,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.width * 0.2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.0.h,
                      left: 28.0.w,
                      right: 19.0.w,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomText(text: "Welcome!", colour: kWhite),
                            CustomText(text: "Account Numbers", colour: kWhite),
                          ],
                        ),
                        SizedBox(height: 5.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            //TODO: this should return the actual name
                            CustomText(text: "Potter", colour: kWhite),
                            CustomText(
                                text: "3245234312 (Wema)", colour: kWhite),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            CustomText(
                              text: "4356754312 (Rolez)",
                              colour: kWhite,
                            ),
                          ],
                        ),
                        SizedBox(height: 35.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomText(text: "Naira Balance", colour: kWhite),
                            CustomText(text: "MTN CG Balance", colour: kWhite),
                            CustomText(
                                text: "Airtel CG Balance", colour: kWhite),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            //₦
                            CustomText(text: "N346,300", colour: kWhite),
                            CustomText(text: "500GB", colour: kWhite),
                            CustomText(text: "100GB", colour: kWhite),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23.0.h),
                Row(
                  children: [
                    SizedBox(width: 28.0.w),
                    CustomText(
                      text: "Quick Options",
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      colour: const Color(0xFF1A2B88),
                    ),
                  ],
                ),
                SizedBox(height: 17.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QuickOption(
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.add,
                      firstText: "Add",
                      secondText: "New API",
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Center(
                              child: AlertDialog(
                                content: CustomContainer(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                  containerChild: AddApi(),
                                  height: 447.0.h,
                                  width: 392.0.w,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(width: 10.77.w),
                    QuickOption(
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.open_in_new_outlined,
                      firstText: "Register",
                      secondText: "Sim Services",
                      onClick: () {
                        Navigator.pushNamed(context, RegisterSimService.id);
                      },
                    ),
                    SizedBox(width: 10.77.w),
                    QuickOption(
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.open_in_new_outlined,
                      firstText: "Activate",
                      secondText: "Cloud Services",
                      onClick: () {
                        Navigator.pushNamed(context, ActivateCloudServices.id);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 11.77.h),
                Container(
                  height: 680.0.h,
                  // height: double.infinity,
                  width: 428.0.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F4FF),
                    // color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0.r),
                      topRight: Radius.circular(60.0.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 29.0.h,
                      left: 21.0.w,
                      right: 21.0.w,
                    ),
                    child: Container(
                      height: 400.0.h,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(20.0.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Recent Transactions",
                                fontSize: 12.0.sp,
                                colour: const Color(0xFF333333),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      TransactionsScreen.id,
                                    );
                                  },
                                  child: CustomText(
                                    text: "See All",
                                    colour: const Color(0xFF427A95),
                                    fontSize: 12.0.sp,
                                  ))
                            ],
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: SizedBox(
                                  height: 32.0.h,
                                  width: 35.99.w,
                                  child: CustomContainer(
                                    borderRadius: BorderRadius.circular(10.0.r),
                                    colour: const Color(0xFF48A2CE),
                                    height: 32.0.h,
                                    width: 35.99.w,
                                    containerChild: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.telegram,
                                        size: 18.0.sp,
                                        color: kWhite,
                                      ),
                                    ),
                                  ),
                                ),
                                title: CustomText(
                                  text: "Voldermort",
                                  fontSize: 15.0.sp,
                                  colour: const Color(0xFF333333),
                                  fontWeight: FontWeight.w500,
                                ),
                                subtitle: CustomText(
                                  text: "Data Transfer",
                                  fontSize: 12.0.sp,
                                  colour: const Color(0xFF333333),
                                ),
                                trailing: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomText(
                                      text: "10GB",
                                      fontSize: 12.0.sp,
                                      colour: const Color(0xFF333333),
                                    ),
                                    CustomText(
                                      text:
                                          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                                      fontSize: 12.0.sp,
                                      colour: const Color(0xFF333333),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 27.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
