import 'package:flutter/material.dart';

import '../../../../product/base/view/base_view.dart';
import '../viewModel/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => const Scaffold(),
    );
  }
}
