import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onClick,
    required this.child,
    required this.backgroundColour,
    this.elevation,
  }) : super(key: key);
  final void Function() onClick;
  final Widget child;
  final Color backgroundColour;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColour,
        elevation: elevation,
      ),
      onPressed: onClick,
      child: child,
    );
  }
}
