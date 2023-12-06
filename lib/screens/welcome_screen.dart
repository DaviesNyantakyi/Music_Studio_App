import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/screens/create_account_view.dart';
import 'package:music_studio_app/screens/signup_phone_number_screen.dart';

import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(kImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            height: MediaQuery.of(context).size.height * 0.49,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Music Studio',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'The largest platform with over 45 thousand DIY artists around the world',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountView(
                          pageController: _pageController,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'or continue with',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElvatedButton(
                      radius: 100,
                      backgroundColor: Colors.blue.withAlpha(20),
                      onPressed: () {},
                      child: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 12),
                    CustomElvatedButton(
                      radius: 100,
                      backgroundColor: Colors.blue.withAlpha(20),
                      onPressed: () {},
                      child: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 12),
                    CustomElvatedButton(
                      radius: 100,
                      backgroundColor: Colors.blue.withAlpha(20),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignUpPhoneNumberScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 64,
            child: CustomElvatedButton(
              radius: 0,
              backgroundColor: Colors.blue.withAlpha(20),
              onPressed: () async {
                //TODO: When you click on the button it should jump to page 2
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountView(
                      pageController: _pageController,
                    ),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account? ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
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
