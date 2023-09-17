import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta/firebase_options.dart';
import 'package:insta/responsive/mobilescreenlayout.dart';
import 'package:insta/responsive/responsive_layout.dart';
import 'package:insta/responsive/webscreenlayout.dart';
import 'package:insta/screens/login_screen.dart';
import 'package:insta/screens/signup_screen.dart';
import 'package:insta/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAq3uWiDW5YtztFAw_YydlzbkrowiQqnuc",
            appId: "1:1044635946861:web:d7afb2df2a0e3d4c8b9464",
            messagingSenderId: "1044635946861",
            projectId: "insta-clone-f9f7d",
            storageBucket: "insta-clone-f9f7d.appspot.com"));
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
  }
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
        // home: const ResponsiveLayout(
        //   mobileScreenLayout: MobileScreenLayout(),
        //   webScreenLayout: WebScreenLayout(),
        // ));
        home: const SignupScreen()
        );
  }
}
