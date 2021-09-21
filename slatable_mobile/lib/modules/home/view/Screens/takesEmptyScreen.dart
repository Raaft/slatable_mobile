import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/takesEmptyCompo.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class TakesEmptyScreen extends StatelessWidget {
  const TakesEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome(
        null,
        [
          buildHeadContainer(context),
          SizedBox(height: 30),
          Image.asset(
            "assets/icons/Line.png",
            height: 64,
            width: 64,
          ),
          SizedBox(height: 32),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyles.inter16shuttleGreyRegular400WithOpacity,
              children: <TextSpan>[
                TextSpan(
                    text:
                        'Get ready for your closeup!\nCreate your first Take by tapping\n '),
                TextSpan(
                    text: 'New Take ',
                    style: TextStyles.inter16shuttleGreyBold700WithOpacity),
                TextSpan(text: 'below. '),
                TextSpan(
                  text: 'Like ',
                  style: TextStyles.inter16shuttleGreyBold700WithOpacity,
                ),
                TextSpan(text: 'a Take to add\n it to your tape.'),
              ],
            ),
          ),
          SizedBox(height: 145),
          buildButtons(context),
        ],
        MainAxisAlignment.spaceBetween,
        containerColor: Palette.lavenderBlue,
      ),
    );
  }
}
