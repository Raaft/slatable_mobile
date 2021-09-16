import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/screens/managerInfoScreen.dart';

Future<void> showMyDialog(context,Widget widget) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
         // title: const Text('AlertDialog Title'),
          content: widget);
    },
  );
}

createColoredButton(context,
    String title,
    Color color,
    void function(),) {
  return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Text(title,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: HexColor("#483F23"),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "NetflixSans"))),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ))),
      ));
}

createColoredRowButton(context,
    String title,
    Color titleColor,
    Color color,
    double width,
    Widget widget,
    void function(),) {
  return Container(
      height: 56,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            Text(title,
                style: GoogleFonts.inter(
                    textStyle: GoogleFonts.inter(textStyle: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)))),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ))),
      ));
}

createOutLinedButton(context,
    String title,
    Color color,
    void function(),) {
  return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Text(title,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: HexColor("#483F23"),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "NetflixSans"))),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ))),
      ));
}

createTextField(BuildContext context,
    String title,
    String hint,
    TextEditingController controller,
    TextInputType inputType,) {
  return Container(
    height: 80,
    padding: const EdgeInsets.only(top: 10, bottom: 5),

    // margin: EdgeInsets.all(24),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(24)),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 55,
            padding: const EdgeInsets.only(left: 13),
            child: TextFormField(
              controller: controller,
              keyboardType: inputType,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(
                  hintStyle: TextStyle(height: .5),
                  hintText: hint,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  )),

              //  controller: NewsCubit.get(context).searchController,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              title,
              style: GoogleFonts.inter(textStyle: Theme
                  .of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w600),)
            ),
          ),
        ),
      ],
    ),
  );
}

navTo(context, Widget screen) async {
  return await Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}

navBack(context) {
  return Navigator.pop(context);
}
