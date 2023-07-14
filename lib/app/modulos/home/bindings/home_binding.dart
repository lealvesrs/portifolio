import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<Controller>(() => Controller());
    Get.put(HomeController());
  }
}
