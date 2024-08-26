import 'main_module.dart';
import 'main_module_paths.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  Modular.setInitialRoute(MainModulePaths.root);
  runApp(ModularApp(module: MainModule(), child: const MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init().config(constraints, orientation);
            _buildTheme();
            final theme = AppTheme.instance.get(ThemeType.light);
            final darkTheme = AppTheme.instance.get(ThemeType.dark);

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('pt', 'BR'),
              ],
              locale: const Locale('pt', 'BR'),
              title: 'Expanses Tracker',
              theme: theme,
              darkTheme: darkTheme,
              routerConfig: Modular.routerConfig,
            );
          },
        );
      },
    );
  }

  void _buildTheme() {
    AppTheme.instance.buildAndSet(
      ThemeType.light,
      colorPalette: LightColorPalette(),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
    AppTheme.instance.buildAndSet(
      ThemeType.dark,
      colorPalette: DarkColorPalette(),
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );
  }
}
