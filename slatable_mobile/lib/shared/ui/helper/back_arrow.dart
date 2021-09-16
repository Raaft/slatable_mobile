
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

import 'images.dart';

class BackArrow extends StatelessWidget {
  BackArrow({this.result});
  final result;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Sailor.back(result);
      },
      child: Consumer(
      builder: (ctx, watch, child) {
    return Image.asset(
        Images.backArrow,
        scale: 4,
      color: Palette.ebony,
      );}),
    );
  }
}


back(context,Color backgroundColor,Color color){
  return AppBar(
    backgroundColor:backgroundColor ,
    leading: IconButton(onPressed: () => navBack(context),
        icon: Icon(Icons.keyboard_backspace,color: color)),
  );
}
