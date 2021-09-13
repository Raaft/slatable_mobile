import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesEmptyScreen.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/scenesFreeSlatablecomp.dart';

class ScenesFreeSlatableScreen extends StatelessWidget {
  const ScenesFreeSlatableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome([
        buildHeadContainer(),
        SizedBox(height: 10),
        buildSencCard(),
        SizedBox(height: 31),
        Text(
            " We created this Audition’s first \n Scene. Next, tap the Scene to add\n Takes. When you’ve added a Take\n come back here to watch and share. ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
        SizedBox(height: 110),

        buildButton(context),
      ], MainAxisAlignment.spaceBetween),
    );
  }

  Padding buildButton(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: createColoredRowButton(
            context, "  Get PRO to create unlimited scenes",Colors.white,HexColor("#121419"),double.infinity,Container(
          height: 17,width: 39,
          child: Text("PRO",textAlign: TextAlign.center,),
          decoration: BoxDecoration(

              color: Colors.deepPurple, borderRadius: BorderRadius.circular(34)),
        ), () {
          navTo(context, TakesEmptyScreen());
        }),
      );
  }


}
