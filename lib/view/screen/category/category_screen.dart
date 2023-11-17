import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../bottom2/yoga_details_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'YOGA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YogaDetailsScreen(),
                          )),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey)),
                          width: double.infinity,
                          height: size.height * 0.4,
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/images/rectangle.jpg',
                                  width: double.infinity,
                                  height: size.height * 0.25,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: ListTile(
                                  title: Text(
                                    '3 Days Strength workout',
                                    style: headingStyle.copyWith(fontSize: 16),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      '🕛  60 mins',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 8),
                                      child: Text(
                                        'Mr. Leonardo',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Text(
                                      '₹2150',
                                      style: TextStyle(
                                        color: greenColorbg,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
