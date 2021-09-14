import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';

 createBodyHome(
    List<Widget> list, MainAxisAlignment mainAxisAlignment) {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        backgroundColor: HexColor("#121419"),
        expandedHeight: 20,
        toolbarHeight: 0,
        floating: true,
        pinned: true,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, position) {
            return Container(
              color: HexColor("#121419"),
              child: Stack(
                children: [
                  Container(
                    child: Align(
                      child: Column(
                          mainAxisAlignment: mainAxisAlignment, children: list),
                      alignment: Alignment.topCenter,
                    ),
                    //height: MediaQuery.of(context).size.height - 100,
                    decoration: BoxDecoration(
                        color: HexColor("#F3F6FC"),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(34),
                            topRight: Radius.circular(34))),
                    margin: EdgeInsets.only(top: 36),
                  ),
                  Container(
                    color: HexColor("#121419"),
                    height: 36,
                  ),
                  Align(
                    child: CircleAvatar(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/person.jpg"),
                        radius: 35,
                      ),
                      backgroundColor: HexColor("#121419"),
                      radius: 38,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            );
          },
          childCount: 1,
        ),
      ),
    ],
  );
}

buildIconsContainer(List<Widget> list, Widget widget) {
  return Container(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 24),
          height: 92,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list),
              Container(
                margin: EdgeInsets.all(4),
                child: Center(child: widget),
                height: 84,
                width: 68,
                decoration: BoxDecoration(
                    color: MyColor.background,
                    borderRadius: BorderRadius.circular(25)),
              )
            ],
          ),
        )
      ],
    ),
  );
}



createBodySetting(
    List<Widget> list, MainAxisAlignment mainAxisAlignment) {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        backgroundColor: HexColor("#121419"),
        expandedHeight: 0,
        toolbarHeight: 0,
        floating: true,
        pinned: true,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, position) {
            return Container(
              color: HexColor("#121419"),
              child: Stack(
                children: [
                  Container(
                    
                    child: Align(
                      child: Column(
                          mainAxisAlignment: mainAxisAlignment, children: list),
                      alignment: Alignment.topCenter,
                    ),
                    //height: MediaQuery.of(context).size.height - 100,
                    decoration: BoxDecoration(
                        color: HexColor("#E6E8EF"),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(34),
                            topRight: Radius.circular(34))),
                    margin: EdgeInsets.only(top: 36),
                    padding: EdgeInsets.only(bottom: 25),
                  ),
                  Container(
                    color: HexColor("#121419"),
                    height: 20,
                  ),
                ],
              ),
            );
          },
          childCount: 1,
        ),
      ),
    ],
  );
}
