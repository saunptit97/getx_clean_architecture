import 'package:base/presentation/sign_in/controller.dart';
import 'package:base_getx/controller/base_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
