import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class CRButton extends StatelessWidget {
  final double? width, height, horizontalMargin;
  final dynamic Function() todo;
  final String text;
  final Color? color;
  final bool? darkMode;
  final bool isLoading;

  CRButton({
    this.width,
    this.height,
    this.horizontalMargin,
    required this.todo,
    required this.text,
    this.isLoading = false,
    this.color,
    this.darkMode,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : todo,
      child: AnimatedContainer(
        duration: Duration(microseconds: 100),
        margin: EdgeInsets.symmetric(horizontal: horizontalMargin??24),
        width: isLoading ? 100 : width,
        height: height??56,
        decoration: BoxDecoration(color: isLoading ? Colors.grey :  color??Palette.victoria, borderRadius: BorderRadius.circular(16)),
        alignment: Alignment.center,
        child:isLoading ? CircularProgressIndicator() :Text(text, style: TextStyle(color: darkMode==null?Colors.white:(darkMode!?Colors.white:Palette.ebony), fontSize: 15, fontWeight: FontWeight.w500),),
      ),
    );
  }
}
