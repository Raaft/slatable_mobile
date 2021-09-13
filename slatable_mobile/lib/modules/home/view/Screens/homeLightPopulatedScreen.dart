import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class HomeLightPopulatedScreen extends StatelessWidget {
  const HomeLightPopulatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createBodyHome([
        Container(
          padding: EdgeInsets.only(top: 72, right: 30, left: 30, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome, \n David",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Text("Your Auditions",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/slider.png"))
            ],
          ),
          height: 205,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              )),
        ),
        SizedBox(height: 24),

        buildIconsContainer([
          Text(
            "Star Wars Ep.5",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "BANDO FETT",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ], IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline))),
        SizedBox(height: 8),

        buildIconsContainer(
          [
            Text(
              "Apple Commercial #33",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 24),
            Text(
              "CUSTOMER",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
          Text(
            "DRAFT",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 8),

        buildIconsContainer(
            [
              Text(
                "Apple Commercial #33",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
            IconButton(
                onPressed: () {}, icon: Icon(Icons.mark_email_unread_rounded))),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(30),
          child: createColoredButton(
              context, "+ Create audition", MyColor.button, () {}),
        ),
      ], MainAxisAlignment.start),
    );
  }
}

