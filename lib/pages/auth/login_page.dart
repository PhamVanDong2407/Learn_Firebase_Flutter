import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_firebase_flutter/pages/auth/widgets/my_button.dart';
import 'package:learn_firebase_flutter/pages/auth/widgets/my_text_field.dart';

import '../../controllers/auth_controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('L O G I N'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                MyTextField(
                  icons: Icons.email,
                  label: 'Enter your email',
                  Onchange: loginController.email,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.password,
                  label: 'Enter your password',
                  Onchange: loginController.password,
                ),
                const SizedBox(height: 50),
                MyButton(
                  icon: Icons.person_pin,
                  Btnname: 'Login',
                  ontap: () {},
                ),
                const SizedBox(height: 20),
                MyButton(
                  icon: Icons.person_add,
                  Btnname: 'Sign Up',
                  ontap: () {
                    Get.toNamed('signup');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
