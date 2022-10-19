import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/Api/api.dart';
import 'package:simservers/models/Api/api_data.dart';
import 'package:simservers/models/Api/api_list.dart';
import 'package:simservers/providers/add_api_provider/add_api_provider.dart';
import 'package:simservers/screens/register_sim_service/delete_device.dart';
import 'package:simservers/screens/register_sim_service/reset_device.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
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
  late bool checked = false;
  final _api = ApiData().index;

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
              ApiList(
                checkBoxCallBack: (value) {
                  setState(() {
                    ApiData().api[ApiData().index].isChecked = value!;
                  });
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
                return const Delete();
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
