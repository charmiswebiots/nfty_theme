import '../../config.dart';

class OnBoardingController extends GetxController
    with GetSingleTickerProviderStateMixin {

  AnimationController? controller;

  int index = 0;


  onIndexChange () {
    index++;
    if(index == 3){
      Get.toNamed(routeName.loginWalletScreen);
    }
    update();
  }

  onIndexMinus () {
    if(index>=0) {
      index--;
    }
    update();
  }

  @override
  void onReady() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat();
    update();
    // TODO: implement onReady
    super.onReady();
  }
}
