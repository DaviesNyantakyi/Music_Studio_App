import 'package:flutter/material.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/widgets/text_field.dart';

import '../widgets/custom_button.dart';

class PasswordResetScreen extends StatelessWidget {
  final Function()? creatButton;
  final Function()? switchAccountButton;

  const PasswordResetScreen({
    super.key,
    this.creatButton,
    this.switchAccountButton,
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
                      'Reset Password',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                      onPressed: () {},
                      child: const Text(
                        'Send email verifcation',
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
