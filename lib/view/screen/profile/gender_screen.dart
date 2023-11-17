import 'package:flutter/material.dart';
import 'package:namasteyog/view/screen/HomeScreen/home_screen.dart';
import 'package:namasteyog/view/shared/pages/bottom_nav.dart';
import 'package:namasteyog/view/shared/widgets/container_widget.dart';
import 'package:namasteyog/view/shared/widgets/textfield_widget.dart';

import '../../../utils/styles.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerOnboardingWidget(checkColor: 3),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'How old are you?',
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
              ReUsebaleTexFormField(
                  checkStyle: true,
                  text: '',
                  keyboardType: TextInputType.phone),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'What is your gender',
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset('assets/images/gender.png'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: ElevatedButton(
          child: Text('Next Step'),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              )),
          style: ElevatedButton.styleFrom(
              backgroundColor: greenColorbg,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
