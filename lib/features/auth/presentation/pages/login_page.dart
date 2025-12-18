import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_tech_task/app/router/app_route_paths.dart';
import 'package:scube_tech_task/app/widgets/app_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => context.go(AppRoutePaths.dashboardPath),
          child: const AppText('Go to DashBoard'),
        ),
      ),
    );
  }
}
