import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:namasteyog/view/screen/Authentication/register_screen.dart';
import 'package:namasteyog/view/shared/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 1, top: 50),
                child: ListTile(
                  title: Text(
                    "Hello!\nWelcome Back",
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
                    keyboardType: TextInputType.phone,
                    text: 'Phone number'),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: greenColorbg,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Row(
                children: [
                  const Flexible(
                    child: Divider(
                      height: 30.0,
                      indent: 20.0,
                      endIndent: 15.0,
                    ),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Flexible(
                    child: Divider(
                      height: 30.0,
                      indent: 15.0,
                      endIndent: 20.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 20),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
        child: SizedBox(
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                )),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                            color: greenColorbg, fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
