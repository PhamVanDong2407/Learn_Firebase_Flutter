import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_firebase_flutter/controllers/auth_controller/signup_controller.dart';
import 'package:learn_firebase_flutter/pages/auth/widgets/my_button.dart';
import 'package:learn_firebase_flutter/pages/auth/widgets/my_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupCotroller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('S I G N U P'),
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
                      'Welcome',
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
                      'SIGN UP',
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
                  icons: Icons.person,
                  label: 'Enter your name',
                  Onchange: signupCotroller.name,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.email,
                  label: 'Enter your email',
                  Onchange: signupCotroller.email,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.phone,
                  label: 'Enter your phone number',
                  Onchange: signupCotroller.number,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.password,
                  label: 'Enter your password',
                  Onchange: signupCotroller.password,
                ),
                const SizedBox(height: 50),
                MyButton(
                  icon: Icons.person_add,
                  Btnname: 'Sign Up',
                  ontap: () {
                    signupCotroller.onSignup();
                  },
                ),
                const SizedBox(height: 20),
                MyButton(
                  icon: Icons.person_pin,
                  Btnname: 'Login',
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
