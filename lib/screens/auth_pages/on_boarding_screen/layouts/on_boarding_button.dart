import '../../../../config.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
              height: Sizes.s48,
              width: Sizes.s48,
              child: SvgPicture.asset(eSvgAssets.rightArrow,
                  fit: BoxFit.scaleDown))
          .decorated(
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                appCtrl.appTheme.buttonGradient,
                appCtrl.appTheme.primary
              ], center: const Alignment(0.7, -0.5))),
      SizedBox(
          height: Sizes.s145,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Stack(alignment: Alignment.centerLeft, children: [
              Image.asset(eImageAssets.onBottom,
                  height: Sizes.s130, width: double.infinity, fit: BoxFit.fill),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: [
                  SvgPicture.asset(eSvgAssets.blueLeftArrow),
                  const HSpace(Sizes.s8),
                  Text(appFonts.prev,
                      style: AppCss.outfitSemiBold18
                          .textColor(appCtrl.appTheme.sameWhite))
                ]),
                const SizedBox(height: 10, width: 10).decorated(
                    color: appCtrl.appTheme.primary, shape: BoxShape.circle),
                Row(children: [
                  Text(appFonts.next,
                      style: AppCss.outfitSemiBold18
                          .textColor(appCtrl.appTheme.sameWhite)),
                  const HSpace(Sizes.s8),
                  SvgPicture.asset(eSvgAssets.blueRightArrow)
                ])
              ]).paddingSymmetric(horizontal: Insets.i20)
            ])
          ]))
    ]);
  }
}
