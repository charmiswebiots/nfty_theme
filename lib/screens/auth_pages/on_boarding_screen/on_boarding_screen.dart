import 'package:nfty_theme/common/extension/text_style_extensions.dart';

import '../../../config.dart';

class OnBoardingScreen extends StatelessWidget {
  final onBoardingCtrl = Get.put(OnBoardingController());
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (_) {
        return Scaffold(
          body: onBoardingCtrl.controller != null ? Stack(
            children: [
              SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(

                      children: [
                        const VSpace(Sizes.s60),
                       Image.asset(eImageAssets.onB1,height: 374,width: 242),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: Sizes.s8,width: Sizes.s48).decorated(color: appCtrl.appTheme.primary),
                              SizedBox(
                                  width: 255,
                                  child: RichText(
                                text: TextSpan(
                                  text: appFonts.weAreTheLargest,
                                  style: AppCss.poppinsRegular24.textColor(appCtrl.appTheme.lightText),
                                  children: [
                                    TextSpan(text: appFonts.nftMarketplace, style: AppCss.poppinsRegular24.textColor(appCtrl.appTheme.white)),
                                    TextSpan(text: appFonts.inTheWorld,style: AppCss.poppinsRegular24.textColor(appCtrl.appTheme.lightText)),
                                  ],
                                ),
                              ))
                            ],
                          ),
                        )

                      ]))
                  .decorated(
                  image: DecorationImage(
                      image: AssetImage(eImageAssets.bg), fit: BoxFit.cover)),
              Positioned(
                  top: 50,
                  left: 350,
                  child:  RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(onBoardingCtrl.controller!),
                      child: Image.asset(eImageAssets.t1, height: 90, width: 90))),
              Positioned(
                  top: 450,
                  right: 360,
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(onBoardingCtrl.controller!),
                      child: Image.asset(eImageAssets.t2, height: 90, width: 90))),
              Positioned(
                  top: 600,
                  left: 340,
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(onBoardingCtrl.controller!),
                      child: Image.asset(eImageAssets.t3, height: 100, width: 100)))
            ],
          ) : Container(),
        );
      }
    );
  }
}
