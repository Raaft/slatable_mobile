import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slatable_mobile/config/routes.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';
import 'package:slatable_mobile/shared/ui/helper/images.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Sailor.toNamed("/"),
      child: Consumer(builder: (ctx, watch, child) {
        return Image.asset(
          Images.hamburgerIcon,
          scale: 4,
          color: Palette.ebony,
        );
      }),
    );
  }
}
