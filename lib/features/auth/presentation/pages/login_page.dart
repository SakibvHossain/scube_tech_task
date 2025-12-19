import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primaryBlue,
      body: Column(
        children: [
          const SafeArea(bottom: false, child: LoginHeader()),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20 + bottomInset),
              decoration: const BoxDecoration(
                color: AppColors.fontWhite,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: const SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: LoginForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
