import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';

createColoredButton(
  context,
  String title,
  Color color,
  void function(),
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: ElevatedButton(
          onPressed: function,
          child: Text(title,
              style: TextStyle(
                  color: MyColor.buttonText,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "NetflixSans")),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ))),
        )),
  );
}

createColoredRowButton(
  context,
  String title,
  Color titleColor,
  Color color,
  double width,
  Widget widget,
  void function(),
) {
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
          children: [
            widget,
            Text(title,
                style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "NetflixSans")),
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

createOutLinedButton(
  context,
  String title,
  Color color,
  Function function(),
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11),
    child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: ElevatedButton(
          onPressed: function,
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "NetflixSans")),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              ))),
        )),
  );
}

createTextField(
  BuildContext context,
  String title,
  String hint,
  TextEditingController controller,
  TextInputType inputType,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
    child: Container(
      height: 80,
      padding: const EdgeInsets.only(top: 16, bottom: 5),

      // margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              )),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 16,
              padding: const EdgeInsets.only(left: 13),
              child: TextFormField(
                controller: controller,
                keyboardType: inputType,
                autocorrect: true,
                enableSuggestions: true,
                decoration: InputDecoration(
                    hintText: hint,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    )),

                //  controller: NewsCubit.get(context).searchController,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

navTo(context, Widget screen) async {
  return await Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}
 navBack(context){
    return  Navigator.pop(context);
 }