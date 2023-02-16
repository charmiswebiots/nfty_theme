import 'config.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeService().theme,
        theme: AppTheme.fromType(ThemeType.light).themeData,
        darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
       /* locale: const Locale('en', 'US'),
        translations: Language(),
        fallbackLocale: const Locale('en', 'US'),*/
        home: SplashScreen(),
        title: appFonts.nfty.tr,
        getPages: appRoute.getPages,
        debugShowCheckedModeBanner: false);
  }
}
