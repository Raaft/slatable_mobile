import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

Widget verticalSpace(double size) => SizedBox(height: size);

Widget horizontalSpace(double size) => SizedBox(width: size);

Widget topBottomPadding(
    {@required Widget? child,
    double top = 40,
    double bottom = 30,
    double left = 25}) {
  return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom, left: left),
      child: child);
}

Widget line(double? height, double? width, double? radius, Color? color) =>
    Container(
      width: width ?? double.infinity,
      height: height ?? 1,
      decoration: BoxDecoration(
        color: color ?? Palette.lavenderBlue.withOpacity(.3),
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
      ),
    );

class HorizontalPadding extends StatelessWidget {
  final double horizontal;
  final double vertical;
  final Widget? child;

  HorizontalPadding(
      {Key? key, this.horizontal = 17, this.vertical = 0, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: child);
  }
}
