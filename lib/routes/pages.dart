import 'package:base/presentation/sign_in/index.dart';
import 'package:base_getx/controller/base_controller.dart';

import 'routes.dart';

class Pages {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: Routes.signIn,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
  ];
}
