import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namasteyog/view/screen/Authentication/otp_screen.dart';
import 'package:namasteyog/view/shared/widgets/textfield_widget.dart';

import '../../../utils/styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool isAgree = false;

class _RegisterScreenState extends State<RegisterScreen> {
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
                    "Register\nNew Account",
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
                    text: 'Phone number',
                    keyboardType: TextInputType.phone),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: RichText(
                    text: TextSpan(
                        text: "I agree to  ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                              text: 'Terms and condition',
                              style: TextStyle(
                                  color: greenColorbg,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  value: isAgree,
                  fillColor: MaterialStatePropertyAll(greenColorbg),
                  onChanged: (value) {
                    setState(() {
                      isAgree = value!;
                    });
                  },
                  dense: true,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  child: Text('Register'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(),
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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 0),
                child: ElevatedButton.icon(
                  icon: SvgPicture.asset(
                    'assets/images/icons8-google-logo.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: Text('Continue with Google'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0.8,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
