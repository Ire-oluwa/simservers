import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dropdownbutton extends StatelessWidget {
  const Dropdownbutton({
    Key? key,
    required this.dropdownValue,
    required this.items,
    required this.onDropdownSelected,
  }) : super(key: key);
  final String dropdownValue;
  final List<DropdownMenuItem<String>> items;
  final void Function(String?) onDropdownSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0.r),
        border: Border.all(color: const Color(0xFFDDDDDD)),
      ),
      child: Center(
        child: DropdownButton(
          isExpanded: true,
          underline: Container(),
          value: dropdownValue,
          items: items,
          onChanged: onDropdownSelected,
        ),
      ),
    );
  }
}
