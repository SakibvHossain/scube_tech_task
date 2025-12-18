import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scube_tech_task/app/router/app_routes.dart';
import 'package:scube_tech_task/app/theme/app_theme.dart';
import 'package:scube_tech_task/app/theme/theme_cubit.dart';

class ScubeTechApp extends StatelessWidget {
  const ScubeTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit(),),],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Scube Tech Task',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeMode,
            routerConfig: goRouter,
          );
        },
      ),
    );
  }
}
