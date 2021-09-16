import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';
import 'package:slatable_mobile/shared/const.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: contextHeight(context),
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(107.0), // here the desired height
              child: AppBar(
                elevation: 0,
              )),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildWelcomeHead(),
              buildWelcomeText(),
              buildWelcomeButtons(context)
            ],
          ),
        ),
      ),
    );
  }
}
