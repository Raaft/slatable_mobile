import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesEmptyScreen.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/scenesFreeSlatablecomp.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class ScenesFreeSlatableScreen extends StatelessWidget {
  const ScenesFreeSlatableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome(
          null,
          [
            buildHeadContainer(context),
            SizedBox(height: 10),
            buildSencCard(context),
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyles.inter16shuttleGreyRegular400WithOpacity,
                children: <TextSpan>[
                  TextSpan(
                      text: 'We created this Audition’s first\n Scene. Next, '),
                  TextSpan(
                    text: 'tap the Scene ',
                    style: TextStyles.inter16shuttleGreyBold700WithOpacity,
                  ),
                  TextSpan(
                      text:
                          'to add\n Takes. When you’ve added a Take\n come back here to '),
                  TextSpan(
                    text: 'watch and share.',
                    style: TextStyles.inter16shuttleGreyBold700WithOpacity,
                  ),
                ],
              ),
            ),
            SizedBox(height: 65),
            buildButton(context),
          ],
          MainAxisAlignment.spaceBetween),
    );
  }

  Padding buildButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: createColoredRowButton(
          context,
          "  Get PRO to create unlimited scenes",
          Colors.white,
          HexColor("#121419"),
          double.infinity,
          Container(
            height: 17,
            width: 39,
            child: Text(
              "PRO",
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(34)),
          ), () {
        navTo(context, TakesEmptyScreen());
      }),
    );
  }
}
