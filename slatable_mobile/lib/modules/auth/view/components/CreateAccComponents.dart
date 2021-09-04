import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/config/routes.dart';
import 'package:slatable_mobile/modules/auth/view/screens/managerInfoScreen.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

createNextAccButton(context, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColor.button,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: (){ navTo(context, ManagerInfoScreen());},
          child: Text(title,
              style: TextStyle(
                  color: MyColor.buttonText,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "NetflixSans")),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyColor.button),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ))),
        )),
  );
}

createTextAndIcon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/icons/vector.png"),
          width: 16.2,
          height: 17.46,
        ),
        SizedBox(width: 9),
        Text(
          " We never sell your information.",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}


CreateAccHead(String headTitle, String subTitle) {
  return Container(
    padding: EdgeInsets.only(right: 30, left: 30, bottom: 24),
    child: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            headTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: "NetflixSans"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              //  fontWeight: FontWeight.w300,
              fontSize: 16,
              fontFamily: "NetflixSans"),
        )
      ],
    ),
  );
}

showMyDialog(BuildContext context) {
  return  showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          content: Container(
        height: 219,
        width: 349,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 42),
                child: Text(
                  'Do you have a manager?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black),
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'Not Yet!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Sailor.toNamed(Routes.managerInfoScreen);                    },
                    child: Text('Yes',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black)),
                  )
                ],
              ),
            ),
          ],
        ),
      ));
    },
  );
}
