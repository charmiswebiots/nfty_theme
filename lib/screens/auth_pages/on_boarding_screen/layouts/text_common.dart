import '../../../../config.dart';

class TextCommon extends StatelessWidget {
  const TextCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
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
        ]));
  }
}
