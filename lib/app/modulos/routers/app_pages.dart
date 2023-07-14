import 'package:get/get.dart';

import '../home/bindings/home_binding.dart';
import '../home/view/home_page.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}

abstract class Routes {
  static const home = '/';
}
