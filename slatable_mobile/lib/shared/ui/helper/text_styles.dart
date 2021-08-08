import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class TextStyles {
  static final baseText = TextStyle(
    color: Palette.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static final header = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 42, color: Palette.white);

  static final subtitle = baseText.copyWith(
      fontWeight: FontWeight.w400, fontSize: 13, color: Palette.darkGrey);

  // main screen

  static final thinIntoBaseText = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 14, color: Palette.white);

  static final introBaseText = baseText.copyWith(
      fontWeight: FontWeight.w700, fontSize: 18, color: Palette.white);

  static final categoriesTextStyle = baseText.copyWith(
      fontWeight: FontWeight.w600, fontSize: 17, color: Palette.grey);

  static final seeAllTextStyle = baseText.copyWith(
      fontWeight: FontWeight.w600, fontSize: 17, color: Palette.japonica);

  static final durationTextStyle = baseText.copyWith(
      fontWeight: FontWeight.w200, fontSize: 12, color: Palette.white);

  //Game Tile

  static final gameTileTitle = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 19, color: Palette.white);

  static final gameTileH2 = baseText.copyWith(
      fontWeight: FontWeight.w400, fontSize: 15, color: Palette.darkGrey);

  static final gameTileH3 = baseText.copyWith(
      fontWeight: FontWeight.w400, fontSize: 15, color: Palette.grey4);



  /// Light Theme Styles
  static final lightBaseText = TextStyle(
    color: Palette.ebony,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static final lightHeader = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 42, color: Palette.ebony);

  static final lightThinIntoBaseText = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 14, color: Palette.ebony);

  static final lightIntroBaseText = baseText.copyWith(
      fontWeight: FontWeight.w700, fontSize: 18, color: Palette.ebony);

  static final lightDurationTextStyle = baseText.copyWith(
      fontWeight: FontWeight.w200, fontSize: 12, color: Palette.ebony);

  static final lightGameTileTitle = baseText.copyWith(
      fontWeight: FontWeight.w500, fontSize: 19, color: Palette.ebony);


}
