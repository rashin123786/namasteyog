import 'package:flutter/material.dart';
import 'package:namasteyog/view/screen/OnboardingScreen/second_onboard_screen.dart';

class FirstOnboardScreen extends StatefulWidget {
  const FirstOnboardScreen({super.key});

  @override
  State<FirstOnboardScreen> createState() => _FirstOnboardScreenState();
}

class _FirstOnboardScreenState extends State<FirstOnboardScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondOnboardScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/titile.png'),
      ),
    );
  }
}
