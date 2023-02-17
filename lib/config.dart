import 'package:get/get.dart';
import 'common/app_array.dart';
import 'common/app_fonts.dart';
import 'controller/common_controller/app_controller.dart';
export 'package:nfty_theme/routes/screen_list.dart';
export 'package:nfty_theme/controller/index.dart';

export 'package:nfty_theme/common/assets/index.dart';
export 'package:nfty_theme/common/extension/widget_extension.dart';
export 'package:nfty_theme/common/extension/spacing.dart';
export 'package:nfty_theme/common/theme/app_css.dart';
export 'package:nfty_theme/common/extension/text_style_extensions.dart';

export 'package:flutter/material.dart';
export 'package:nfty_theme/packages_list.dart';
export 'package:nfty_theme/routes/route_method.dart';
export 'package:nfty_theme/routes/route_name.dart';

// All languages list
export 'package:nfty_theme/common/languages/ar.dart';
export 'package:nfty_theme/common/languages/en.dart';
export 'package:nfty_theme/common/languages/fr.dart';
export 'package:nfty_theme/common/languages/hi.dart';

// Common libraries
export 'package:nfty_theme/routes/index.dart';
export 'common/languages/index.dart';
export 'common/theme/app_theme.dart';
export 'common/theme/theme_service.dart';



final appCtrl = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());

AppFonts appFonts = AppFonts();
AppArray appArray = AppArray();