
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';
import 'package:slatable_mobile/shared/ui/helper/images.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

import 'hamburger_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final Widget? action;
  final result;
  final bool hasSearch;
  final bool hasNotification;
  final bool hasMenu;

  const CustomAppBar(
      {Key? key,
      this.title,
      this.leading,
      this.action,
      this.result,
      this.hasSearch = false,
      this.hasNotification = false,
      this.hasMenu = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: title,
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child:  HamburgerMenu()
              ),
      actions: [
        if(action != null) action!,
        if (hasSearch)
          GestureDetector(
            onTap: () => Sailor.toNamed("/"),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              child: Image.asset(
                Images.searchIcon,
                scale: 4,
              ),
            ),
          ),
        if (hasNotification)
          Container(
            alignment: Alignment.center,
            width: 40,
            child: Stack(
              children: [
                Consumer(
                    builder: (ctx, watch, child) {
                      return Image.asset(
                  Images.notificationIcon,
                  scale: 4,
                  height: 30,
                  color: Palette.ebony,
                );}),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 15,
                      width: 15,
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(color: Palette.notificationBG, shape: BoxShape.circle),
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
              ],
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
