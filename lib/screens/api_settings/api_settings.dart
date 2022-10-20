import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/register_sim_service/delete_device.dart';
import 'package:simservers/screens/register_sim_service/reset_device.dart';
import 'package:simservers/widgets/add_api/add_api.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class ApiSettings extends StatefulWidget {
  const ApiSettings({Key? key}) : super(key: key);
  static const String id = "api settings";

  @override
  State<ApiSettings> createState() => _ApiSettingsState();
}

class _ApiSettingsState extends State<ApiSettings> {
  late List<bool> checked = List<bool>.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kTransparent,
        leading: kBuildBackButton(context, kBlack),
        title: CustomText(
          text: "API Settings",
          colour: kBlack,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Divider(
                indent: 0.0,
                endIndent: 0.0,
                thickness: 1.0.h,
                color: kBlack,
              ),
              SizedBox(height: 18.75.h),
              _buildApiSettingsButtons(
                context,
                () {},
                () {},
                () {},
              ),
              SizedBox(height: 19.0.h),
              ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 3.0.h),
                    child: CustomContainer(
                      height: 53.86.h,
                      width: 387.0.w,
                      containerChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                              value: checked[index],
                              onChanged: (value) {
                                setState(() {
                                  checked[index] = value!;
                                });
                              }),
                          CustomText(
                            text: "Suleiman",
                            fontSize: 12.62.sp,
                            fontWeight: FontWeight.w500,
                            colour: const Color(0xFF323C47),
                          ),
                          CustomText(
                            text: "3234",
                            fontSize: 12.62.sp,
                            fontWeight: FontWeight.w500,
                            colour: const Color(0xFF707683),
                          ),
                          TextButton(onPressed: (){}, child: CustomText(text: "Edit device", colour: const Color(0xFF707683), fontSize: 10.94.sp,),),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildApiSettingsButtons(
    BuildContext context,
    void Function() onClickAddNewApi,
    void Function() onClickReset,
    void Function() onClickDelete) {
  return Padding(
    padding: EdgeInsets.only(left: 29.0.w, right: 30.0.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
          title: "Add new API",
          onClick: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  content: SizedBox(
                    height: 447.0.h,
                    width: 392.0.w,
                    child: const AddApi(),
                  ),
                );
              },
            );
          },
          backgroundColour: const Color(0xFF20B45B),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
        CustomTextButton(
          title: "Reset",
          onClick: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Reset();
              },
            );
          },
          backgroundColour: const Color(0xFF5A9FFC),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
        CustomTextButton(
          title: "Delete",
          onClick: () {
            showDialog(
              context: context,
              builder: (context) {
                return Delete(onClick: () {},);
              },
            );
          },
          backgroundColour: const Color(0xFFFE7062),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
      ],
    ),
  );
}
