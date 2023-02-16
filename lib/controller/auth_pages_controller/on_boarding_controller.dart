import '../../config.dart';

class OnBoardingController extends GetxController
    with GetSingleTickerProviderStateMixin {

  AnimationController? controller;

  @override
  void onReady() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat();
    update();
    // TODO: implement onReady
    super.onReady();
  }
}
