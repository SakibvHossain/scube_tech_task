import 'package:go_router/go_router.dart';
import 'package:scube_tech_task/app/router/app_route_names.dart';
import 'package:scube_tech_task/app/router/app_route_paths.dart';
import 'package:scube_tech_task/app/router/app_shell.dart';
import 'package:scube_tech_task/features/auth/presentation/pages/login_page.dart';
import 'package:scube_tech_task/features/scm/presentation/pages/dashboard_page.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: AppRoutePaths.loginPath,
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          path: AppRoutePaths.dashboardPath,
          name: AppRouteNames.dashboard,
          builder: (context, index) => const DashboardPage(),
        ),
      ],
      builder: (context, state, child) {
        return AppShell(child: child);
      },
    ),

    GoRoute(
      path: AppRoutePaths.loginPath,
      name: AppRouteNames.login,
      builder: (context, index) => const LoginPage(),
    ),
  ],
);
