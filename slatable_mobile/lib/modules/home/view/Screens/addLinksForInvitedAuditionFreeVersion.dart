import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class AddLinksForInvitedAuditionFreeScreen extends StatelessWidget {
  const AddLinksForInvitedAuditionFreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(context),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "enter links for audition".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Reel",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("Enter reel link",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Resume",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("Enter resume link",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Website",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("Enter website link",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 100),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: createColoredButton(
              context, "Save Links", HexColor("#DEF0D8"), () {}))
    ], MainAxisAlignment.start));
  }

  Container buildHeadContainer(context) {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_backspace,
              )),
          Text(
            "Add Links",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      height: 205,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          )),
    );
  }
}
