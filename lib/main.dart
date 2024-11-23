import 'package:flutter/material.dart';
import 'package:geometry_dash/services/settings_service.dart';

import 'services/app.locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final SettingsService _settingsService = locator<SettingsService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
                color: _settingsService.isDarkMode ? Colors.black : Colors.red),
          ),
        ),
      ),
    );
  }
}
