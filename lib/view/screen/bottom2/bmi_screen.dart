import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namasteyog/view/shared/widgets/textfield_widget.dart';

import '../../../utils/styles.dart';
import '../HomeScreen/home_screen.dart';
import '../bottom3/bottom_nav_3.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'BMI',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_sharp))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReUsebaleTexFormField(
                checkStyle: false,
                text: 'Your Age',
                keyboardType: TextInputType.phone),
            ReUsebaleTexFormField(
                checkStyle: false,
                text: 'Your Height',
                keyboardType: TextInputType.number),
            ReUsebaleTexFormField(
                checkStyle: false,
                text: 'Your Weight',
                keyboardType: TextInputType.text),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                child: Text('Calculate'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: greenColorbg,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child: Text(
                'Course Time',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(3, (index) {
                    return SizedBox(
                      width: size.width * 0.6,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Image.asset(
                          'assets/images/rectangle.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: size.height * 0.07,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: Color.fromRGBO(157, 178, 206, 1),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bar_chart,
                  color: greenColorbg,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FadeInRight(
                        child: BottomNavthird(),
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.menu,
                  color: Color.fromRGBO(157, 178, 206, 1),
                )),
          ],
        ),
      ),
    );
  }
}
