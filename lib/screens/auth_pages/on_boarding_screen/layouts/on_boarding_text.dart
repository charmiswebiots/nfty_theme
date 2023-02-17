import '../../../../config.dart';

class OnBoardingText extends StatelessWidget {
  final int? selectIndex,index;
  const OnBoardingText({Key? key,this.index,this.selectIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (onBoardingCtrl) {
        return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: Sizes.s8, width: Sizes.s48)
                    .decorated(color: appCtrl.appTheme.primary)
                    .paddingOnly(bottom: Insets.i15),
                Column(
                  children: [
                    SizedBox(
                        width: 255,
                        child: selectIndex == index ?   RichText(
                            text: TextSpan(
                                text: appFonts.weAreTheLargest,
                                style: AppCss.poppinsRegular24
                                    .textColor(appCtrl.appTheme.linerGradiant)
                                    .textHeight(1.5),
                                children: [
                              TextSpan(
                                  text: appFonts.nftMarketplace,
                                  style: AppCss.poppinsBold24
                                      .textColor(appCtrl.appTheme.white)
                                      .textHeight(1.5)),
                              TextSpan(
                                  text: appFonts.inTheWorld,
                                  style: AppCss.poppinsRegular24
                                      .textColor(appCtrl.appTheme.lightText)
                                      .textHeight(1.5))
                            ]))

                       : Column(
                         children: [
                           RichText(
                                text: TextSpan(
                                    text: appFonts.buy,
                                    style: AppCss.poppinsRegular24
                                        .textColor(appCtrl.appTheme.sameWhite)
                                        .textHeight(1.5),
                                    children: [
                                      TextSpan(
                                          text: appFonts.and,
                                          style: AppCss.poppinsBold24
                                              .textColor(appCtrl.appTheme.linerGradiant)
                                              .textHeight(1.5)),
                                      TextSpan(
                                          text: appFonts.collect,
                                          style: AppCss.poppinsRegular24
                                              .textColor(appCtrl.appTheme.sameWhite)
                                              .textHeight(1.5)),
                                      TextSpan(
                                          text: appFonts.yours,
                                          style: AppCss.poppinsRegular24
                                              .textColor(appCtrl.appTheme.linerGradiant)
                                              .textHeight(1.5))
                                    ])),SizedBox(
                             width: 300,
                             child: Text(appFonts.getFromTheMost,style: AppCss.outfitSemiBold14.textColor(appCtrl.appTheme.linerGradiant)),
                           )

                         ],
                       ) ),

                  ],
                )
              ])
        ]).paddingSymmetric(horizontal: Insets.i20);
      }
    );
  }
}
