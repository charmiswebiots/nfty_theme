import '../../common/theme/app_theme.dart';
import '../../config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  AppTheme get appTheme => _appTheme;
  String priceSymbol = "\$";
  bool isTheme = false;
  bool isRTL = false;
  String languageVal = "in";
  final storage = GetStorage();
 // double currencyVal = double.parse(appArray.language[0]["INR"].toString());
  bool isSwitched = false;
  bool isOnboard = false;
  dynamic currency;
  //update theme
  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

}
