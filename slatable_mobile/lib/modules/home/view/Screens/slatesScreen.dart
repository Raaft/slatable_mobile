import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class SlatesScreen extends StatelessWidget {
  const SlatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Container(
        height: 420,
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Palette.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Palette.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: createColoredButton(
            context, "+ New Slate", Palette.creamBruleeYellow, () {}),
      )
    ], MainAxisAlignment.start));
  }

  buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () {}, child: Icon(Icons.keyboard_backspace)),
          Text(
            "My Slates",
            textAlign: TextAlign.left,
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
