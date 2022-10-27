import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/faq_provider/faq_provider.dart';
import 'package:simservers/widgets/build_question/build_question.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:provider/provider.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);
  static const String id = "faq";

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  late bool isQuestion1Clicked = false;
  late bool isQuestion2Clicked = false;
  late bool isQuestion3Clicked = false;
  late bool isQuestion4Clicked = false;
  late bool isQuestion5Clicked = false;

  clickQuestion1() {
    setState(() => isQuestion1Clicked = !isQuestion1Clicked);
  }

  clickQuestion2() {
    setState(() => isQuestion2Clicked = !isQuestion2Clicked);
  }

  clickQuestion3() {
    setState(() => isQuestion3Clicked = !isQuestion3Clicked);
  }

  clickQuestion4() {
    setState(() => isQuestion4Clicked = !isQuestion4Clicked);
  }

  clickQuestion5() {
    setState(() => isQuestion5Clicked = !isQuestion5Clicked);
  }

  @override
  void initState() {
    isQuestion1Clicked = false;
    super.initState();
  }

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
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
            size: 24.0.sp,
          ),
        ),
        title: CustomText(
          text: "FAQ",
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w500,
          colour: kBlack,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 9.0.w, right: 9.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 53.0.h),
                  Column(
                    children: [
                      BuildQuestion(
                        question: "When can I sign up?",
                        answer: "You can sign up as soon as possible.",
                        isQuestionClicked: isQuestion1Clicked,
                        onQuestionClicked: clickQuestion1,
                      ),
                      BuildQuestion(
                        question: "How many devices will I need?",
                        answer:
                            "Depends on your transaction range but you may need more than one device.",
                        onQuestionClicked: clickQuestion2,
                        isQuestionClicked: isQuestion2Clicked,
                      ),
                      BuildQuestion(
                        question: "Can I recharge on the platform?",
                        onQuestionClicked: clickQuestion3,
                        isQuestionClicked: isQuestion3Clicked,
                        answer:
                            "Yes, you can do both airtime and data on SIMSERVERS.IO",
                      ),
                      BuildQuestion(
                        question: "How do I see my transactions?",
                        onQuestionClicked: clickQuestion4,
                        isQuestionClicked: isQuestion4Clicked,
                        answer:
                            "All transactions are recorded under Transactions history",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
