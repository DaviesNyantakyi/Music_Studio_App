import 'package:flutter/material.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/utilities/constant.dart';
import 'package:music_studio_app/widgets/text_field.dart';

import '../widgets/custom_button.dart';

class SignUpEmailScreen extends StatelessWidget {
  final Function()? creatButton;
  final Function()? switchAccountButton;
  final Function(String)? onChangedPassword;
  final Function(String)? onChangedEmail;
  final Function(String)? onChangedName;
  const SignUpEmailScreen({
    super.key,
    this.creatButton,
    this.switchAccountButton,
    this.onChangedEmail,
    this.onChangedPassword,
    this.onChangedName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Create Account',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'To create an account, please fill in your information.',
                      style: TextStyle(
                        fontSize: 16,
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      onChanged: onChangedName,
                      hintText: 'Full Name',
                    ),
                    const SizedBox(height: 4),
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
                      onPressed: creatButton,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
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
                            'Already have a account? ',
                            style: TextStyle(color: kBlack, fontSize: 16),
                          ),
                          Text(
                            'Login',
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


/*class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(24),
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomTextField(
                    onChanged: (value) {},
                    hintText: 'Full Name',
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    onChanged: (value) {},
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    onChanged: (value) {},
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 32),
                  CustomElvatedButton(
                    height: 64,
                    width: double.infinity,
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 32),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have a account? ',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          'Logn',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */