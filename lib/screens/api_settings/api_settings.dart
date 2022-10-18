import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/Api/api_list.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';

class ApiSettings extends StatefulWidget {
  const ApiSettings({Key? key}) : super(key: key);
  static const String id = "api settings";

  @override
  State<ApiSettings> createState() => _ApiSettingsState();
}

class _ApiSettingsState extends State<ApiSettings> {
  late bool checked = false;

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
      body: Column(
        children: [
          Divider(
            indent: 0.0,
            endIndent: 0.0,
            thickness: 1.0.h,
            color: kBlack,
          ),
          SizedBox(height: 18.75.h),
          _buildApiSettingsButtons(
            () {},
            () {},
            () {},
          ),
          SizedBox(height: 19.0.h),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ApiList(
              checkBoxCallBack: (value) {
                setState(() {
                  //bool = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildApiSettingsButtons(void Function() onClickAddNewApi,
    void Function() onClickReset, void Function() onClickDelete) {
  return Padding(
    padding: EdgeInsets.only(left: 29.0.w, right: 30.0.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
          title: "Add new API",
          onClick: onClickAddNewApi,
          backgroundColour: const Color(0xFF20B45B),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
        CustomTextButton(
          title: "Reset",
          onClick: onClickAddNewApi,
          backgroundColour: const Color(0xFF5A9FFC),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
        CustomTextButton(
          title: "Delete",
          onClick: onClickAddNewApi,
          backgroundColour: const Color(0xFFFE7062),
          height: 35.0.h,
          width: 113.0.w,
          textColour: kWhite,
        ),
      ],
    ),
  );
}
