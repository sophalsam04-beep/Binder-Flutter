import 'package:get/get.dart';
import 'package:demo10/controller/home_controller.dart';

class HomeBinding extends Bindings{


     @override
  void dependencies() {
      Get.lazyPut<HomeController>(()=> HomeController());
  }


}
