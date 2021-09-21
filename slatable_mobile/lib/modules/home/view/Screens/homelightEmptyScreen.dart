import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeLightEmptycomp.dart';

class HomeLightEmptyScreen extends StatelessWidget {
  const HomeLightEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome(
          null,
          [
            buildHead(context),
            SizedBox(height: 92),
            buildBody(),
            SizedBox(height: 80),
            buildButton(context),
          ],
          MainAxisAlignment.spaceBetween),
    );
  }
}
