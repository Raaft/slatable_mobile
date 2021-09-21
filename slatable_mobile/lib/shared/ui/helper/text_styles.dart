import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class TextStyles {
  static final baseText = TextStyle(
      color: Color(0xff483F23),
      fontWeight: FontWeight.bold,
      fontSize: 14,
      fontFamily: "NetflixSans");

  static final head1 = GoogleFonts.inter(
      textStyle: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: Color(0xffE6E8EF),
  ));

  static final agreeToPolicy = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xffE6E8EF),
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ));

  static final agreeToPolicyBig = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Color(0xffE6E8EF),
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );

  static final signInWithText = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xff483F23),
    fontWeight: FontWeight.w300,
    fontSize: 16,
  ));

  static final forgetPasswordText = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xffE6E8EF).withOpacity(.7),
    fontWeight: FontWeight.w400,
    fontSize: 16,
  ));

  static final mainYellowButton = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xff483F23),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ));

  static final causten29BlackMedium600 = TextStyle(
    fontFamily: 'Causten',
    color: Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 29,
  );

  static final inter15BlackPearlRegular500WithOpacity = GoogleFonts.inter(
      height: .5,
      textStyle: TextStyle(
        color: Palette.blackPearl.withOpacity(.5),
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ));

  static final inter16BlackPearlBold700 = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Palette.blackPearl,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  ));

  static final inter32NeroBold700 = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Palette.neroGrey,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  ));

  static final inter32NeroMedium600 = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Palette.neroGrey,
    fontWeight: FontWeight.w600,
    fontSize: 32,
  ));
  static final inter32NeroRegular400 = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Palette.neroGrey,
    fontWeight: FontWeight.w400,
    fontSize: 32,
  ));

  static final causten15BlackMedium600 = TextStyle(
    fontFamily: 'Causten',
    color: Palette.black,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static final inter11MadisonBlueMedium600 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.madisonBlue,
      fontWeight: FontWeight.w600,
      fontSize: 11,
    ),
  );

  static final inter13blackPearlBold700 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl,
      fontWeight: FontWeight.w700,
      fontSize: 13,
    ),
  );

  static final inter13blackPearlMedium500WithOpacity = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl.withOpacity(.5),
      fontWeight: FontWeight.w500,
      fontSize: 13,
    ),
  );

  static final inter13denimBlueMedium500 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.denimBlue,
      fontWeight: FontWeight.w500,
      fontSize: 13,
    ),
  );
  static final inter15electricPurpleRegular600 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.electricPurple,
      fontWeight: FontWeight.w600,
      fontSize: 15,
    ),
  );

  static final inter14blackPearlBold700 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  );

  static final inter15blackPearlBold700 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl,
      fontWeight: FontWeight.w700,
      fontSize: 15,
    ),
  );

  static final inter15blackPearlRegular500 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );
  static final inter15blackPearlMedium600 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl,
      fontWeight: FontWeight.w600,
      fontSize: 15,
    ),
  );

  static final inter15blackPearlRegular500WithOpacity = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.blackPearl.withOpacity(.4),
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );

  static final inter16shuttleGreyRegular400 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.shuttleGrey,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );
  static final inter16blackRegular400 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.black,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );
  static final inter16blackRegular400WithOpacity = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.black.withOpacity(.8),
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );
  static final inter16shuttleGreyRegular400WithOpacity = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.shuttleGrey.withOpacity(.8),
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );

  static final inter16shuttleGreyBold700 = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.shuttleGrey,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
  );

  static final inter16shuttleGreyBold700WithOpacity = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Palette.shuttleGrey.withOpacity(.8),
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
  );

  static final inter11aluminumGreyMedium600 = GoogleFonts.inter(
    textStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Palette.aluminiumGrey),
  );

  static final inter16whiteMedium600 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Palette.white,
    ),
  );
  static final inter15whiteMedium600 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Palette.white,
    ),
  );
  static final inter14whiteMedium400 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Palette.white,
    ),
  );

  static final inter10whiteMedium300 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: Palette.white,
    ),
  );
}
