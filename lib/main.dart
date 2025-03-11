import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_firebase_flutter/firebase_options.dart';
import 'package:learn_firebase_flutter/pages/home_page.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey, // Adjust as necessary
        hintColor: Colors.orange, // Adjust as necessary
        // You can customize more properties like button, text, etc. here
      ),
      themeMode: ThemeMode.dark,
      // Set default theme mode to dark
      home: const HomePage(),
    );
  }
}
