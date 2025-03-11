import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_firebase_flutter/firebase_options.dart';
import 'package:learn_firebase_flutter/pages/auth/signup_page.dart';
import 'configs/theme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App FireBase',
      theme: AppTheme.lightTheme, // Áp dụng theme sáng
      darkTheme: AppTheme.darkTheme, // Áp dụng theme tối
      themeMode: ThemeMode.dark, // Sử dụng theme sáng làm mặc định
      home: const SignupPage(),
    );
  }
}
