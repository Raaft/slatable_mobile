import 'package:slatable_mobile/shared/ui/helper/export.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  final Color? borderColor;
  final bool? hasBorder;
  final double? radius;
  final Color? color;
  final ImageProvider<Object>? image;
  final bool? hasImage;

  CustomContainer(
      {required this.height,
      required this.width,
      this.child,
      this.color,
      this.radius,
      this.hasImage = false,
      this.image,
      this.borderColor,
      this.hasBorder});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Container(
        child: child,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? Palette.white,
          image: hasImage == true
              ? DecorationImage(
                  fit: BoxFit.fill,
                  image: image ??
                      NetworkImage(
                        'https://via.placeholder.com/224x114/',
                      ))
              : null,
          border: hasBorder == true
              ? Border.all(
                  color: borderColor ?? Palette.blackPearl.withOpacity(.1))
              : null,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10),
          ),
        ),
      ),
    );
  }
}
