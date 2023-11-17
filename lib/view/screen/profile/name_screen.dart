import 'package:flutter/material.dart';
import 'package:namasteyog/utils/constants.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:namasteyog/view/screen/profile/goal_screen.dart';
import 'package:namasteyog/view/shared/widgets/textfield_widget.dart';

import '../../shared/widgets/container_widget.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ContainerOnboardingWidget(checkColor: 1),
              SizedBox(
                height: 40,
              ),
              Text(
                'Step 1 of 3',
                style: TextStyle(
                  color: greenColorbg,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'What is your Name?',
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 1, top: 30),
                child: ReUsebaleTexFormField(
                    checkStyle: true,
                    text: 'Name',
                    keyboardType: TextInputType.text),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 1),
                child: ReUsebaleTexFormField(
                  checkStyle: true,
                  text: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
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
                builder: (context) => GoalScreen(),
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
