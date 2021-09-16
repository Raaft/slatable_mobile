import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeLightEmptycomp.dart';

class HomeLightEmptyScreen extends StatelessWidget {
  const HomeLightEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome(HexColor("#F3F6FC"),[
        buildHead(context),
        SizedBox(height: 92),
        buildBody(),
        SizedBox(height: 140),
        buildButton(context),

      ],MainAxisAlignment.spaceBetween),
    );
  }


}
