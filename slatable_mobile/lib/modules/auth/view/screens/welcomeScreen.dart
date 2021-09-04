import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(107.0), // here the desired height
          child: AppBar(elevation: 0,)),
      body: Container(
        padding: EdgeInsets.only(right: 30, left: 30),
        color: MyColor.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildWelcomeHead(),
            buildWelcomeText(),
            buildWelcomeButtons(context)
          ],
        ),
      ),
    );
  }
}
