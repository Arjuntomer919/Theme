import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/dark_theme.dart';
import 'package:theme/provider/theme_changer_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final themeChanger = Provider.of<ThemeChanger>(context);
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeChanger())],

      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
        title: 'Flutter Demo',
        themeMode: themeChanger.themeMode,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark 
        ),
        home: DarkThemeScreen(),
      );
      })
    );
  }
}
