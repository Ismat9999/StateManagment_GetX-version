

import 'package:get/get.dart';
import 'package:smgetxversion/presantion/controllers/home_controller.dart';

class RootBinding implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController(), fenix: true);
  }
}