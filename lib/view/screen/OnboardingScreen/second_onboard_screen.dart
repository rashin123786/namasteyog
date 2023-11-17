import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:namasteyog/view/screen/Authentication/login_screen.dart';

class SecondOnboardScreen extends StatelessWidget {
  const SecondOnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.phone_android_sharp),
                  label: Text('Continue with Mobile Number'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
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
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  icon: SvgPicture.asset(
                    'assets/images/icons8-google-logo.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: Text('Continue with Mobile Number'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
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
