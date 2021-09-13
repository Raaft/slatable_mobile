import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/takesEmptyCompo.dart';

class TakesEmptyScreen extends StatelessWidget {
  const TakesEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome([
        buildHeadContainer(),
        SizedBox(height: 90),
        Image.asset(
          "assets/icons/Line.png",
          height: 64,
          width: 64,
        ),
        SizedBox(height: 32),
        Text(
          "Get ready for your closeup!\nCreate your first Take by tapping\n New Take below.  Like a Take to add\n it to your tape.",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 145),
        buildButtons(context),
      ], MainAxisAlignment.spaceBetween),
    );
  }


}
