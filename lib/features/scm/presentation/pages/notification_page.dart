import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/router/app_shell.dart';
import 'package:scube_tech_task/generated/assets.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Image.asset(
            Assets.imagesEmptyNotification,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
