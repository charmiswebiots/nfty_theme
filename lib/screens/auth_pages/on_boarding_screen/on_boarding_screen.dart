import '../../../config.dart';

class OnBoardingScreen extends StatelessWidget {
  final onBoardingCtrl = Get.put(OnBoardingController());

  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (_) {
      return Scaffold(
          body: onBoardingCtrl.controller != null
              ? Stack(alignment: Alignment.topRight, children: [
                  Stack(children: [
                    const SizedBox(
                            height: double.infinity, width: double.infinity)
                        .decorated(
                            image: DecorationImage(
                                image: AssetImage(eImageAssets.bg),
                                fit: BoxFit.cover)),
                    Positioned(
                        top: 50,
                        left: 320,
                        child: RotationTransition(
                            turns: Tween(begin: 0.0, end: 1.0)
                                .animate(onBoardingCtrl.controller!),
                            child: Image.asset(eImageAssets.t1,
                                height: 90, width: 90))),
                    Positioned(
                        top: 450,
                        right: 330,
                        child: RotationTransition(
                            turns: Tween(begin: 0.0, end: 1.0)
                                .animate(onBoardingCtrl.controller!),
                            child: Image.asset(eImageAssets.t2,
                                height: 90, width: 90))),
                    Positioned(
                        top: 600,
                        left: 320,
                        child: RotationTransition(
                            turns: Tween(begin: 0.0, end: 1.0)
                                .animate(onBoardingCtrl.controller!),
                            child: Image.asset(eImageAssets.t3,
                                height: 100, width: 100))),
                    SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const VSpace(Sizes.s20),
                              Image.asset(
                                  onBoardingCtrl.index == 0
                                      ? eImageAssets.onB1
                                      : onBoardingCtrl.index == 1
                                          ? eImageAssets.onB2
                                          : onBoardingCtrl.index == 2
                                              ? eImageAssets.onB3
                                              : eImageAssets.onB1,
                                  height: 374,
                                  width: 242,
                                  fit: BoxFit.fill),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                                  height: Sizes.s8,
                                                  width: Sizes.s48)
                                              .decorated(
                                                  color:
                                                      appCtrl.appTheme.primary)
                                              .paddingOnly(bottom: Insets.i15),
                                          onBoardingCtrl.index == 0
                                              ? SizedBox(
                                                  width: 240,
                                                  child: RichText(
                                                      text: TextSpan(
                                                          text: appFonts
                                                              .weAreTheLargest,
                                                          style: AppCss
                                                              .poppinsRegular24
                                                              .textColor(appCtrl
                                                                  .appTheme
                                                                  .linerGradiant)
                                                              .textHeight(1.5),
                                                          children: [
                                                        TextSpan(
                                                            text: appFonts
                                                                .nftMarketplace,
                                                            style: AppCss
                                                                .poppinsBold24
                                                                .textColor(
                                                                    appCtrl
                                                                        .appTheme
                                                                        .white)
                                                                .textHeight(
                                                                    1.5)),
                                                        TextSpan(
                                                            text: appFonts
                                                                .inTheWorld,
                                                            style: AppCss
                                                                .poppinsRegular24
                                                                .textColor(appCtrl
                                                                    .appTheme
                                                                    .lightText)
                                                                .textHeight(
                                                                    1.5))
                                                      ])),
                                                )
                                              : Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              text: onBoardingCtrl
                                                                          .index ==
                                                                      1
                                                                  ? appFonts.buy
                                                                  : appFonts
                                                                      .publish,
                                                              style: AppCss
                                                                  .poppinsBold24
                                                                  .textColor(appCtrl
                                                                      .appTheme
                                                                      .sameWhite)
                                                                  .textHeight(
                                                                      1.5),
                                                              children: [
                                                            TextSpan(
                                                                text: onBoardingCtrl
                                                                            .index ==
                                                                        1
                                                                    ? appFonts
                                                                        .and
                                                                    : appFonts
                                                                        .your,
                                                                style: AppCss
                                                                    .poppinsRegular24
                                                                    .textColor(appCtrl
                                                                        .appTheme
                                                                        .linerGradiant)
                                                                    .textHeight(
                                                                        1.5)),
                                                            TextSpan(
                                                                text: onBoardingCtrl
                                                                            .index ==
                                                                        1
                                                                    ? appFonts
                                                                        .collect
                                                                    : appFonts
                                                                        .nft,
                                                                style: AppCss
                                                                    .poppinsBold24
                                                                    .textColor(appCtrl
                                                                        .appTheme
                                                                        .sameWhite)
                                                                    .textHeight(
                                                                        1.5)),
                                                            TextSpan(
                                                                text: onBoardingCtrl.index ==
                                                                        1
                                                                    ? appFonts
                                                                        .yours
                                                                    : appFonts
                                                                        .now,
                                                                style: AppCss
                                                                    .poppinsRegular24
                                                                    .textColor(appCtrl
                                                                        .appTheme
                                                                        .linerGradiant)
                                                                    .textHeight(
                                                                        1.5))
                                                          ])),
                                                      SizedBox(
                                                        width: 300,
                                                        child: Text(
                                                            appFonts
                                                                .getFromTheMost,
                                                            style: AppCss.outfitRegular14
                                                                .textColor(appCtrl
                                                                    .appTheme
                                                                    .linerGradiant)
                                                                .textHeight(
                                                                    1.5)),
                                                      )
                                                    ])
                                        ])
                                  ]).paddingSymmetric(horizontal: Insets.i20),
                              Stack(alignment: Alignment.topCenter, children: [
                                SizedBox(
                                        height: Sizes.s48,
                                        width: Sizes.s48,
                                        child: SvgPicture.asset(
                                            eSvgAssets.rightArrow,
                                            fit: BoxFit.scaleDown))
                                    .decorated(
                                        shape: BoxShape.circle,
                                        gradient: RadialGradient(colors: [
                                          appCtrl.appTheme.buttonGradient,
                                          appCtrl.appTheme.primary
                                        ], center: const Alignment(0.7, -0.5)))
                                    .inkWell(
                                        onTap: () =>
                                            onBoardingCtrl.onIndexChange()),
                                SizedBox(
                                    height: Sizes.s145,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Image.asset(
                                                    eImageAssets.onBottom,
                                                    height: Sizes.s130,
                                                    width: double.infinity,
                                                    fit: BoxFit.fill),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      onBoardingCtrl.index == 1
                                                          ? Row(children: [
                                                              SvgPicture.asset(
                                                                  eSvgAssets
                                                                      .blueLeftArrow),
                                                              const HSpace(
                                                                  Sizes.s8),
                                                              Text(
                                                                  appFonts.prev,
                                                                  style: AppCss
                                                                      .outfitSemiBold18
                                                                      .textColor(appCtrl
                                                                          .appTheme
                                                                          .sameWhite))
                                                            ]).inkWell(
                                                              onTap: () =>
                                                                  onBoardingCtrl
                                                                      .onIndexMinus())
                                                          : Container(),
                                                      const SizedBox(
                                                              height: 10,
                                                              width: 10)
                                                          .decorated(
                                                              color: appCtrl
                                                                  .appTheme
                                                                  .primary,
                                                              shape: BoxShape
                                                                  .circle),
                                                      Row(children: [
                                                        Text(appFonts.next,
                                                            style: AppCss
                                                                .outfitSemiBold18
                                                                .textColor(appCtrl
                                                                    .appTheme
                                                                    .sameWhite)),
                                                        const HSpace(Sizes.s8),
                                                        SvgPicture.asset(
                                                            eSvgAssets
                                                                .blueRightArrow)
                                                      ]).inkWell(
                                                          onTap: () =>
                                                              onBoardingCtrl
                                                                  .onIndexChange())
                                                    ]).paddingSymmetric(
                                                    horizontal: Insets.i20)
                                              ])
                                        ]))
                              ])
                            ]))
                  ]),
                  if (onBoardingCtrl.index == 1 || onBoardingCtrl.index == 2)
                    Text(appFonts.skip,
                            style: AppCss.outfitBold16
                                .textColor(appCtrl.appTheme.primary))
                        .inkWell(onTap: (){
                      Get.toNamed(routeName.loginWalletScreen);
                      onBoardingCtrl.index = 0;
                      print(onBoardingCtrl.index);
                      onBoardingCtrl.update();
                    }
                    )
                        .paddingSymmetric(
                            horizontal: Insets.i20, vertical: Insets.i55)
                ])
              : Container());
    });
  }
}
