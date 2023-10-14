import 'package:flutter/material.dart';
import 'package:launchpad/app/views/home_page.dart';

class App extends StatelessWidget {
  Color primary = Color(0xFF067CCB);
  Color primaryCenter = Color(0xFFADCBFC);
  Color secondary = Color(0xFFC40050);
  Color secondaryCenter = Color(0xFFFF2525);
  Color tertiary = Color(0xFFA23AB7);
  Color tertiaryCenter = Color(0xFFE247FC);
  Color background = Colors.black;
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LaunchPad',
      theme: ThemeData(
          scaffoldBackgroundColor: background,
          colorScheme: ColorScheme.fromSeed(
            seedColor: primary,
            primary: primary,
            primaryContainer: primaryCenter,
            secondary: secondary,
            secondaryContainer: secondaryCenter,
            tertiary: tertiary,
            tertiaryContainer: tertiaryCenter,
            background: background,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: background,
          )),
      home: const HomePage(),
    );
  }
}
