import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.placeholder,
    required this.keyboardType,
    required this.inputAction,
    this.validate,
    this.enabled,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.onKeyUp,
    required this.width,
    required this.height,
  }) : super(key: key);

  final TextEditingController controller;
  final String? placeholder;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validate;
  final bool? enabled;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Function(String)? onKeyUp;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        onChanged: onKeyUp,
        controller: controller,
        validator: validate,
        textInputAction: inputAction,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          // filled: true,
          // fillColor: const Color(0xffE6ECFA),
          contentPadding: EdgeInsets.symmetric(
            vertical: 5.0.h,
            horizontal: 12.0.w,
          ),
          hintText: placeholder,
          border: const OutlineInputBorder(),
          suffixIcon: suffixIcon,
        ),
        enabled: enabled,
        textCapitalization: textCapitalization,
        obscureText: obscureText,
      ),
    );
  }
}
