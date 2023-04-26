import 'package:base/presentation/sign_in/controller.dart';
import 'package:base_getx/base.dart';
import 'package:base_getx/controller/base_controller.dart';
import 'package:flutter/material.dart';

class SignInPage extends BaseView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign_in".tr),
      ),
    );
  }
}
