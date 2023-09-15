import 'package:flutter/material.dart';
import 'package:insta/responsive/mobilescreenlayout.dart';
import 'package:insta/responsive/responsive_layout.dart';
import 'package:insta/responsive/webscreenlayout.dart';
import 'package:insta/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() ,webScreenLayout: WebScreenLayout() ,)
    );
  }
}
