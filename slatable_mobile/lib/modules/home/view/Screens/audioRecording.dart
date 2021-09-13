import 'package:flutter/material.dart';

class AudioRecordingScreen extends StatelessWidget {
  const AudioRecordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all( 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            Container(
                height: 260,
                width: double.infinity,
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/microphoneRecor.png",
                      fit: BoxFit.cover,
                    ))),
            Align(
              alignment: Alignment.bottomRight,

              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.adjust,
                    color: Colors.red,
                    size: 40,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
