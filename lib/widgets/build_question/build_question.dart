import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';

class BuildQuestion extends StatefulWidget {
  const BuildQuestion({
    Key? key,
    required this.question,
    required this.onQuestionClicked,
    required this.isQuestionClicked,
    required this.answer,
  }) : super(key: key);
  final String question;
  final String answer;
  final VoidCallback onQuestionClicked;
  final bool isQuestionClicked;

  @override
  State<BuildQuestion> createState() => _BuildQuestionState();
}

class _BuildQuestionState extends State<BuildQuestion> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isQuestionClicked ? 200.0.h : 100.0.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Color(0xFFB7B7BD),
          ),
          GestureDetector(
            onTap: widget.onQuestionClicked,
            child: Container(
              padding: EdgeInsets.only(top: 20.0.h, left: 19.0.w),
              child: CustomText(
                text: widget.question,
                fontSize: 18.0.sp,
                colour: widget.isQuestionClicked
                    ? kSecondaryBlue
                    : kUnselectedQuestion,
                fontWeight: widget.isQuestionClicked
                    ? FontWeight.bold
                    : FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.0.h, left: 14.0.w),
            child: widget.isQuestionClicked
                ? Container(
                    padding: EdgeInsets.only(top: 13.0.h, left: 14.0.w),
                    height: 75.0.h,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFE7ECF8),
                    child: CustomText(text: widget.answer),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
