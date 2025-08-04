import 'package:flutter/material.dart';
import 'package:Taskia/core/config/app_config.dart';
import 'package:Taskia/core/theme/app_theme.dart';
import 'package:Taskia/features/auth/presentation/pages/login_page.dart';

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: AppConfig.debugShowCheckedModeBanner,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
