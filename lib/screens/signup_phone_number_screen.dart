import 'package:flutter/material.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/screens/verify_phone_number_screen.dart';
import 'package:music_studio_app/utilities/constant.dart';
import 'package:music_studio_app/widgets/text_field.dart';

import '../widgets/custom_button.dart';

class SignUpPhoneNumberScreen extends StatelessWidget {
  final Function()? loginButton;
  final Function()? switchAccountButton;

  const SignUpPhoneNumberScreen({
    super.key,
    this.loginButton,
    this.switchAccountButton,
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
                      'Sign up with phone',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Enter your name and phonenumber to continue.',
                      style: TextStyle(
                        fontSize: 16,
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      onChanged: (value) {},
                      hintText: 'Name',
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      onChanged: (value) {},
                      hintText: 'Phone Number',
                    ),
                    const SizedBox(height: 32),
                    CustomElvatedButton(
                      height: 64,
                      width: double.infinity,
                      radius: 10,
                      backgroundColor: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VerifyPhoneNumberScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
