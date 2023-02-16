import '../../../config.dart';

class SplashScreen extends StatelessWidget {
  final splashCtrl = Get.put(SplashController());
   SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) {
        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(eImageAssets.splashLogo,
                                height: 47, width: 147)
                          ]))
                  .decorated(
                      image: DecorationImage(
                          image: AssetImage(eImageAssets.bg), fit: BoxFit.cover)),
              Positioned(
                  top: 90,
                  left: 340,
                  child: Image.asset(eImageAssets.t1, height: 90, width: 90)),
              Positioned(
                  top: 500,
                  right: 330,
                  child: Image.asset(eImageAssets.t2, height: 60, width: 60)),
              Positioned(
                  top: 620,
                  left: 300,
                  child: Image.asset(eImageAssets.t3, height: 180, width: 180))
            ],
          ),
        );
      }
    );
  }
}
