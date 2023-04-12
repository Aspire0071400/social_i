import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_i/responsive/mobile_screen_layout.dart';
import 'package:social_i/responsive/responsive_layout_screen.dart';
import 'package:social_i/responsive/web_screen_layout.dart';
import 'package:social_i/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDC5gkDggx3qX-emuesUyUx7Na4hs8ZHCU",
          appId: "1:630322317672:web:f0c9c32bbc1ee44c9eeedd",
          messagingSenderId: "630322317672",
          projectId: "social-i-421b2",
          storageBucket: "social-i-421b2.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social_i',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ));
  }
}
