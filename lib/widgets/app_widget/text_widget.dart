import '../../config.dart';

class TextCommon {

  textMediumDarkColor({text}) {
    return Text(text,
        style: AppCss.metropolisMediumText.textColor(appCtrl.appTheme.distance));
  }

}