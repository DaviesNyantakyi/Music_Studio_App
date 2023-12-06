import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/utilities/constant.dart';
import 'package:music_studio_app/widgets/text_field.dart';

import '../widgets/custom_button.dart';

class VerifyPhoneNumberScreen extends StatelessWidget {
  final Function()? loginButton;
  final Function()? switchAccountButton;

  const VerifyPhoneNumberScreen({
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
                      'Verify your number',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Enter the verifcation code send to your account.',
                      style: TextStyle(
                        fontSize: 16,
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Flexible(
                      child: OtpTextField(
                        numberOfFields: 5,
                        borderColor: kBlue,
                        fieldWidth: 58,
                        showFieldAsBox: true,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {}, // end onSubmit
                      ),
                    ),
                    const SizedBox(height: 32),
                    CustomElvatedButton(
                      height: 64,
                      width: double.infinity,
                      radius: 10,
                      backgroundColor: Colors.black,
                      onPressed: () {},
                      child: const Text(
                        'Verify ',
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
