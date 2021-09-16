import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/takesPopulatedCompo.dart';

class TakesPopulated extends StatelessWidget {
  const TakesPopulated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome(HexColor("#D7E2FE"), [
        buildHeadContainer(context),
        SizedBox(
          height: 400,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return buildItemCard(index);
              }),
        ),
        buildButtons(context),
      ], MainAxisAlignment.spaceBetween),
    );
  }
}
