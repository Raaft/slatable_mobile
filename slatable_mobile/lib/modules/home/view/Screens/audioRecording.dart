import 'package:flutter/material.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/leistenReccordingScreen.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class AudioRecordingScreen extends StatelessWidget {
  const AudioRecordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        color: Palette.white,
                      )),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.help_outline_outlined,
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Scene Audio",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
              ),
              verticalSpace(90),
              Container(
                  height: 260,
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      navTo(context, ListenRecordingScreen());
                    },
                    child: Image.asset(
                      AppIcons.micIcon,
                      color: Palette.gainsboroWhite,
                      scale: 4,
                      height: 128,
                    ),
                  )),
              Center(
                child: Text(
                  'Tap record to get started.',
                  style: TextStyles.inter15whiteMedium600,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      child: Image.asset(
                        AppIcons.recordIcon,
                        scale: 4,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
