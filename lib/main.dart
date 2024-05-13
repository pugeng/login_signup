import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up.dart';
import 'onboarding_page.dart';
import 'successful_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingPage(),
      '/login_page' :(context) => LoginPage(),
      '/sign_up': (context) => SignUpPage(),
      '/successful':(context) => SuccessfulPage(),
    },
  ));
}

