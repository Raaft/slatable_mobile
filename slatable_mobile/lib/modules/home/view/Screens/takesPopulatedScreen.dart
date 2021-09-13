import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/takesPopulatedCompo.dart';

class TakesPopulated extends StatelessWidget {
  const TakesPopulated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome([
        buildHeadContainer(),
        SizedBox(
          height: 400,
          child:GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 16,

              itemBuilder: (BuildContext context, int index) {
                return buildItemCard();
              }
          ),
          /*GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[

              buildItemCard(),
              buildItemCard(),
              buildItemCard(),

            ],
          ),*/
        ),
        buildButtons(context),
      ], MainAxisAlignment.spaceBetween),
    );
  }


}


