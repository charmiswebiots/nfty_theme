import '../../config.dart';


class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': en,
    'hi_IN': hi,
    'ar_AE': ar,
    'fr_CA':fr
  };
}

