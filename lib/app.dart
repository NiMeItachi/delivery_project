import 'package:delivery_project/screens/enter_code_page.dart';
import 'package:delivery_project/screens/enter_page.dart';
import 'package:delivery_project/screens/get_started_page.dart';
import 'package:delivery_project/screens/location_page.dart';
import 'package:delivery_project/screens/login_page.dart';
import 'package:delivery_project/screens/phone_number_page.dart';
import 'package:delivery_project/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const EnterPage(),
      routes: {
        EnterPage.id: (context) => const EnterPage(),
        GetStartedPage.id: (context) => const GetStartedPage(),
        PhoneNumberPage.id: (context) => const PhoneNumberPage(),
        EnterCodePage.id: (context) => const EnterCodePage(),
        LocationPage.id: (context) => const LocationPage(),
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
    );
  }
}
