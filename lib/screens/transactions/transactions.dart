import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/transactions_provider/transactions_provider.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/dropdown_button/dropdown_button.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  late String currenciesDropdownValue =
      context.read<TransactionProvider>().currencies[1];
  late String periodDropdownValue =
      context.read<TransactionProvider>().period[0];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: kContainerWhite,
          child: Column(
            children: [
              Divider(
                thickness: 1.0.h,
                color: kBlack,
                indent: 0.0,
                endIndent: 0.0,
              ),
              SizedBox(height: 26.75.h),
              Padding(
                padding: EdgeInsets.only(right: 19.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 78.0.w,
                      height: 38.0.h,
                      child: Dropdownbutton(
                        dropdownValue: currenciesDropdownValue,
                        items: context
                            .read<TransactionProvider>()
                            .currencies
                            .map((e) => DropdownMenuItem<String>(
                                value: e,
                                child: Center(
                                  child: CustomText(
                                    text: e,
                                    fontSize: 12.0.sp,
                                    colour: const Color(0xFF333333),
                                  ),
                                )))
                            .toList(),
                        onDropdownSelected: (value) {
                          setState(() {
                            currenciesDropdownValue = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15.0.w),
                    SizedBox(
                      width: 78.0.w,
                      height: 38.0.h,
                      child: Dropdownbutton(
                        dropdownValue: periodDropdownValue,
                        items: context
                            .read<TransactionProvider>()
                            .period
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Center(
                                  child: CustomText(
                                    text: e,
                                    fontSize: 12.0.sp,
                                    colour: const Color(0xFF333333),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onDropdownSelected: (value) {
                          setState(() {
                            periodDropdownValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.0.h),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 19.0.w, right: 22.0.w, bottom: 1.5.h),
                      child: CustomContainer(
                        colour: kWhite,
                        boxShadowColour: kWhite,
                        height: 55.54.h,
                        width: 387.0.w,
                        borderRadius: BorderRadius.circular(5.0.r),
                        containerChild: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "Suleiman", fontSize: 10.94.sp, colour: const Color(0xFF323C47), fontWeight: FontWeight.bold,),
                                  CustomText(text: "${DateTime.now().hour}:${DateTime.now().minute}", fontSize: 8.0.sp, colour: const Color(0xFF575757),),
                                ],
                              ),
                              CustomText(text: "Sme Cloud", fontSize: 10.94.sp, colour: const Color(0xFF707683),),
                              CustomText(text: "10 GB", fontSize: 10.94.sp, colour: const Color(0xFF707683),),
                              CustomText(text: "08148349284", fontSize: 10.94.sp, colour: const Color(0xFF707683),),
                              CustomText(text: "Successful", fontSize: 10.94.sp, colour: const Color(0xFF4CA835),),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
