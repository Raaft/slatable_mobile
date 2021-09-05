import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/routes.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';


createTextAndIcon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 35),
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

createAccHead(String headTitle, String subTitle) {
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
  return showDialog(
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
                    onPressed: () {},
                    child: Text(
                      'Not Yet!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Sailor.toNamed(Routes.managerInfoScreen);
                    },
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
