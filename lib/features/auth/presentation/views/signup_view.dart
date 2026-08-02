import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(context: context, title: 'حساب جديد'),
      body: SignupViewBody(),
    );
  }
}
