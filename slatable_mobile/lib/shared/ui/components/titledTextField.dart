import 'package:flutter/material.dart';

createTextField(BuildContext context, String title, String hint) {
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
                keyboardType: TextInputType.text,
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

navTo(context,Widget screen)async{
return  await Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
}