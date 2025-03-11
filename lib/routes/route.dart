import 'package:get/get.dart';
import 'package:learn_firebase_flutter/pages/auth/login_page.dart';
import 'package:learn_firebase_flutter/pages/auth/signup_page.dart';

var pages = [
  GetPage(
    name: "/login",
    page: () => const LoginPage(),
  ),
  GetPage(
    name: "/signup",
    page: () => const SignupPage(),
  ),
];
