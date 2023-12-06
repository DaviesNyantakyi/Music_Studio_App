import 'package:flutter/material.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/screens/password_reset_screen.dart';
import 'package:music_studio_app/utilities/constant.dart';
import 'package:music_studio_app/widgets/text_field.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final Function()? loginButton;
  final Function()? switchAccountButton;
  final Function(String)? onChangedPassword;
  final Function(String)? onChangedEmail;
  const LoginScreen({
    super.key,
    this.loginButton,
    this.switchAccountButton,
    this.onChangedEmail,
    this.onChangedPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(kImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                height: MediaQuery.of(context).size.height * 0.70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextField(
                      onChanged: onChangedEmail,
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      onChanged: onChangedPassword,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 32),
                    CustomElvatedButton(
                      height: 64,
                      width: double.infinity,
                      radius: 10,
                      backgroundColor: Colors.black,
                      onPressed: loginButton,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PasswordResetScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    TextButton(
                      onPressed: switchAccountButton,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(color: kBlack, fontSize: 16),
                          ),
                          Text(
                            'Register',
                            style: TextStyle(color: kBlue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
