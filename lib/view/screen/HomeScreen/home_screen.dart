import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:namasteyog/utils/constants.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:namasteyog/view/screen/Menu/my_profile_screen.dart';
import 'package:namasteyog/view/screen/Tutor/tutor_screen.dart';
import 'package:namasteyog/view/screen/bottom2/Bmi_screen.dart';
import 'package:namasteyog/view/screen/bottom2/yoga_details_screen.dart';
import 'package:namasteyog/view/screen/bottom3/bottom_nav_3.dart';
import 'package:namasteyog/view/screen/category/category_screen.dart';
import '../../shared/pages/notification_screen.dart';
import '../../shared/widgets/exapansion_tile_widget.dart';
import '../../shared/widgets/top_courses_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfileScreen(),
                  )),
              child: Icon(Icons.person)),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/titile.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    )),
                child: Icon(Icons.notifications_active_outlined)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/rectangle.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
              child: Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryScreen(),
                      )),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/rectangle.jpg',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/rectangle.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/rectangle.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                'Top courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TopCousesWidget(size: size, tutorPage: false),
            TopCousesWidget(size: size, tutorPage: false),
            TopCousesWidget(size: size, tutorPage: false),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                'Learn From Top Tutor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (0.5 / 0.6),
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/rectangle.jpg',
                          width: size.width * 0.44,
                          height: size.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.05,
                        right: size.width * 0.08,
                        top: size.height * 0.16,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TutorScreen(),
                              )),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(119, 119, 119, 1),
                            ),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Tutor Name\n',
                                    style: TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(
                                        text: 'YOGA',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 10),
              child: Text(
                'Testimonial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                options: CarouselOptions(autoPlay: true),
                itemCount: 5,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                      child: Text(itemIndex.toString()),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(119, 119, 119, 1),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                'FAQ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            expansionTileWidget(),
            expansionTileWidget(),
            expansionTileWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                'Deals & Offers',
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
                      width: size.width * 0.8,
                      height: size.height * 0.3,
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
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color.fromRGBO(60, 234, 92, 1),
        foregroundColor: Colors.white,
        child: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.whatsapp,
              size: 30,
            )),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: size.height * 0.07,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: greenColorbg,
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
