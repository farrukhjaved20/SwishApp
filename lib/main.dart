import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:swish_app/views/authentication/sigin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        defaultTransition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 700),
        home: const SignInPage(),
      ),
    );
  }
}
