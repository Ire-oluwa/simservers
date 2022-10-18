import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/settings_provider/settings_provider.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  static const String id = "edit profile screen";

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late bool readOnly = true;
  late bool enabled = false;
  final _editProfileFormKey = GlobalKey<FormState>();

  late String name;
  late String emailAddress;
  late String phoneNumber;
  late String state;
  late String homeAddress;

  @override
  void initState() {
    //name should be the username
    name = "Ire";
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: kBlack),
        ),
        title: CustomText(
          text: "Edit Profile",
          colour: kBlack,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: kUnfocus,
        child: SingleChildScrollView(
          child: Form(
            key: _editProfileFormKey,
            child: SizedBox(
              height: 767.0.h,
              child: ListView(
                children: [
                  SizedBox(height: 31.0.h),
                  _buildProfileDetail(
                    context,
                    context.read<EditProvider>().name,
                    TextInputType.name,
                    TextInputAction.next,
                    "Name",
                    readOnly,
                    enabled,
                  ),
                  _buildProfileDetail(
                    context,
                    context.read<EditProvider>().emailAddress,
                    TextInputType.emailAddress,
                    TextInputAction.next,
                    "Email address",
                    readOnly,
                    enabled,
                  ),
                  _buildProfileDetail(
                    context,
                    context.read<EditProvider>().phoneNumber,
                    TextInputType.number,
                    TextInputAction.next,
                    "Phone num ber",
                    readOnly,
                    enabled,
                  ),
                  _buildProfileDetail(
                    context,
                    context.read<EditProvider>().stateAddress,
                    TextInputType.name,
                    TextInputAction.next,
                    "State",
                    readOnly,
                    enabled,
                  ),
                  _buildProfileDetail(
                    context,
                    context.read<EditProvider>().homeAddress,
                    TextInputType.streetAddress,
                    TextInputAction.next,
                    "Home Address",
                    readOnly,
                    enabled,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if(readOnly)
                      CustomElevatedButton(
                        onClick: () {
                          setState(() {
                            readOnly = !readOnly;
                            enabled = !enabled;
                          });
                        },
                        backgroundColour: kPrimaryBlue,
                        height: 40.0.h,
                        width: 107.0.w,
                        child: const CustomText(
                          text:  "Edit",
                          colour: kWhite,
                        ),
                      ),
                      if(!readOnly)
                      CustomElevatedButton(
                        onClick: () {
                          setState(() {
                            readOnly = !readOnly;
                            enabled = !enabled;
                          });
                        },
                        backgroundColour: kPrimaryBlue,
                        height: 40.0.h,
                        width: 107.0.w,
                        child: const CustomText(
                          text: "Save",
                          colour: kWhite,
                        ),
                      ),
                      SizedBox(width: 39.5.w),
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



Widget _buildProfileDetail(
  context,
  TextEditingController controller,
  TextInputType keyboardType,
  TextInputAction inputAction,
  String title,
  bool readOnly,
    bool enabled,
) {
  return Padding(
    padding: EdgeInsets.only(left: 26.0.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          colour: const Color(0xFF020614),
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 10.0.h),
        CustomTextFormField(
          enabled: enabled,
          controller: controller,
          keyboardType: keyboardType,
          inputAction: inputAction,
          width: 370.0.w,
          height: 82.0.h,
          readOnly: readOnly,
        ),
        SizedBox(
          height: 14.0.h,
        ),
      ],
    ),
  );
}
