import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_theme.dart';
import 'package:flutter_application_1/features/analytics/presentation/screens/energy_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:flutter_application_1/features/home/presentation/screens/device_screen.dart';
import 'package:flutter_application_1/features/menu/presentation/screens/menu_screen.dart';
import 'package:flutter_application_1/features/settings/presentation/screens/setting_screen.dart';
import 'package:flutter_application_1/features/smart_home/presentation/screens/smart_screen.dart';
import 'package:flutter_application_1/shared/screens/placeholder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SettingScreen(),
      routes: {
        '/home': (_) => const DeviceScreen(),
        '/login': (_) => const SignInScreen(),
        '/settings': (_) => const SettingScreen(),
        '/statistics': (_) => const EnergyScreen(),
        '/smart': (_) => const SmartScreen(),
        '/menu': (_) => const MenuScreen(),
        '/register': (_) => const PlaceholderScreen(title: 'Register'),
        '/profile': (_) => const PlaceholderScreen(title: 'Profile'),
        '/notifications': (_) => const PlaceholderScreen(title: 'Notifications'),
        '/schedule': (_) => const PlaceholderScreen(title: 'Schedule'),
        '/wifi': (_) => const PlaceholderScreen(title: 'Wi-Fi & Network'),
      },
    );
  }
}
