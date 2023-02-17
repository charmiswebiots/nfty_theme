import 'package:nfty_theme/common/extension/text_style_extensions.dart';
import '../../config.dart';
part 'scale.dart';

class AppCss {
  //metropolis font
  static TextStyle outfit =  TextStyle(
    fontFamily:  GoogleFonts.outfit().fontFamily,
    letterSpacing: 0,
    height: 1,
  );

  //metropolis font
  static TextStyle poppins =  TextStyle(
    fontFamily:  GoogleFonts.poppins().fontFamily,
    letterSpacing: 0,
    height: 1,
  );

  //metropolis font
  static TextStyle metropolis = const TextStyle(
    fontFamily: "metropolis",
    letterSpacing: 0,
    height: 1,
  );

  static TextStyle get metropolisSmallTextLight => metropolis.light.size(FontSizes.f12);
  static TextStyle get outfitSmallTextLight => outfit.light.size(FontSizes.f12);

  //Text Style metropolis extraThickBold
  static TextStyle get metropolisH1 => metropolis.extraThickBold.size(FontSizes.f20);
  static TextStyle get metropolisH2 => metropolis.extraThickBold.size(FontSizes.f18);

  //Text Style metropolis Medium
  static TextStyle get metropolisTitle2 => metropolis.medium.size(FontSizes.f14);
  static TextStyle get metropolisLargeButton => metropolis.medium.size(FontSizes.f18);
  static TextStyle get metropolisMediumText => metropolis.medium.size(FontSizes.f12);
  
  //Text Style metropolis SemiBold
  static TextStyle get outfitSemiBold16 => outfit.semiBold.size(FontSizes.f16);
  static TextStyle get outfitSemiBold18 => outfit.semiBold.size(FontSizes.f18);
  static TextStyle get outfitSemiBold14 => outfit.semiBold.size(FontSizes.f14);
  static TextStyle get outfitSemiBold10 => outfit.semiBold.size(FontSizes.f10);
  static TextStyle get outfitSemiBold12 => outfit.semiBold.size(FontSizes.f12);

  //Text Style metropolis regular
  static TextStyle get metropolisSmallText => metropolis.regular.size(FontSizes.f12);

  static TextStyle get poppinsRegular24 => poppins.regular.size(FontSizes.f24);
  static TextStyle get outfitRegular14 => poppins.regular.size(FontSizes.f14);

  //Text Style metropolis extraBold
  static TextStyle get metropolisPrice => metropolis.extraBold.size(FontSizes.f16);

  static TextStyle get metropolisBoldF12 => metropolis.extraBold.size(FontSizes.f12);
  static TextStyle get metropolisBoldF14 => metropolis.extraBold.size(FontSizes.f14);
  static TextStyle get metropolisLarge => metropolis.extraBold.size(FontSizes.f45);

  static TextStyle get outfitBold16 => outfit.bold.size(FontSizes.f16);
  static TextStyle get outfitBold10 => outfit.bold.size(FontSizes.f10);
  static TextStyle get outfitBold12 => outfit.bold.size(FontSizes.f12);
  static TextStyle get outfitBold14 => outfit.bold.size(FontSizes.f14);
  static TextStyle get poppinsBold24 => poppins.bold.size(FontSizes.f24);

}
