import 'package:flutter/material.dart';
import 'package:namasteyog/view/screen/profile/name_screen.dart';

import '../../../utils/styles.dart';
import '../../shared/widgets/textfield_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 1, top: 50),
                child: ListTile(
                  title: Text(
                    "Confirm\nYour Phone number",
                    style: headingStyle,
                  ),
                  subtitle: Text(
                    "Enter the email associated with your account and we'll send an email with code to reset your password.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 1, top: 30),
                child: ReUsebaleTexFormField(
                    checkStyle: true,
                    text: 'OTP',
                    keyboardType: TextInputType.phone),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  child: Text('Verfied'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NameScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: greenColorbg,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
