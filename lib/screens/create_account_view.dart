import 'package:flutter/material.dart';
import 'package:music_studio_app/screens/login_screen.dart';
import 'package:music_studio_app/screens/signup_email_screen.dart';

class CreateAccountView extends StatefulWidget {
  final PageController pageController;
  const CreateAccountView({super.key, required this.pageController});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        SignUpEmailScreen(
          switchAccountButton: () async {
            widget.pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
        ),
        LoginScreen(
          switchAccountButton: () {
            widget.pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
        ),
      ],
    );
  }
}
