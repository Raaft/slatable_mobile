import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class ListenRecordingScreen extends StatelessWidget {
  const ListenRecordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: Palette.white,
                  )),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 260,
                      width: double.infinity,
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/Vector.png",
                            fit: BoxFit.cover,
                          ))),
                  Text(
                    "00:00:00",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.delete, color: Colors.red, size: 30)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download_done_outlined,
                            color: Colors.green,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.pause_circle_outline,
                            color: Colors.blue,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
