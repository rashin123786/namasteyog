import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:namasteyog/view/screen/Menu/Blog/blog_screen.dart';
import 'package:namasteyog/view/screen/Menu/my_profile_screen.dart';
import 'package:namasteyog/view/screen/Menu/my_recording_scree.dart';
import 'package:namasteyog/view/shared/pages/notification_screen.dart';

import '../HomeScreen/home_screen.dart';
import '../bottom2/Bmi_screen.dart';

class BottomNavthird extends StatelessWidget {
  const BottomNavthird({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProfileScreen(),
                      ));
                },
                icon: Icon(Icons.person)),
          ),
          centerTitle: true,
          title: Text(
            'Menu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ));
              },
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: ListTile(
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      title: Text(
                        'My Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Icon(Icons.person),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyProfileScreen(),
                          )),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      leading: Icon(Icons.library_books_outlined),
                      title: Text(
                        'Blog',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlogScreen(),
                          )),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      leading: Icon(Icons.queue_music_rounded),
                      title: Text(
                        'My recording',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.error_outline_outlined),
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      title: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.admin_panel_settings),
                      trailing: Icon(Icons.arrow_circle_right_rounded),
                      title: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BmiScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.bar_chart,
                        color: Color.fromRGBO(157, 178, 206, 1),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: greenColorbg,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
