import '../../../../config.dart';
import 'on_boarding_button.dart';
import 'on_boarding_text.dart';

class SliderLayout extends StatelessWidget {
  const SliderLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const VSpace(Sizes.s20),
              Image.asset(eImageAssets.onB1, height: 374, width: 242),
              OnBoardingText(),
              OnBoardingButton()
            ]));
  }
}
