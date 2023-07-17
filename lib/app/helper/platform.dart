import 'package:get/get.dart';

bool get isMobile => Get.width < 500;
bool get isTablet => Get.width <= 800 && Get.width >= 500;
bool get isWeb => Get.width > 800;
