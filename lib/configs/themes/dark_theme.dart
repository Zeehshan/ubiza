part of 'app_themes.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: kPrimary,
  scaffoldBackgroundColor: kBlackBG,
  brightness: Brightness.dark,
  backgroundColor: kWhiteGrey,
  splashColor: Colors.transparent,
  colorScheme: ThemeData.dark().colorScheme.copyWith(background: kFilled),
  textTheme: ThemeData.dark().textTheme.copyWith(
      headline1: GoogleFonts.poppins().copyWith(
          fontWeight: FontWeight.w600, color: Colors.white, fontSize: 24),
      headline2: GoogleFonts.poppins().copyWith(
          fontWeight: FontWeight.w600, color: kLightGrey, fontSize: 20),
      headline3: GoogleFonts.poppins().copyWith(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: 32),
      headline4: GoogleFonts.poppins().copyWith(
          fontWeight: FontWeight.w400, color: Colors.white, fontSize: 16),
      headline5: GoogleFonts.poppins().copyWith(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
      headline6: GoogleFonts.poppins()
          .copyWith(fontWeight: FontWeight.w400, color: kGrey, fontSize: 14),
      subtitle1: GoogleFonts.poppins()
          .copyWith(fontWeight: FontWeight.w400, fontSize: 16, color: kGrey)),
);
