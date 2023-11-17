import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namasteyog/utils/constants.dart';

import '../../../utils/styles.dart';

class YogaDetailsScreen extends StatefulWidget {
  YogaDetailsScreen({super.key});

  @override
  State<YogaDetailsScreen> createState() => _YogaDetailsScreenState();
}

class _YogaDetailsScreenState extends State<YogaDetailsScreen> {
  Object _selectedTimeRange = '';
  int check = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '3 Days Strength workout',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/rectangle.jpg',
                  width: double.infinity,
                  height: size.height * 0.4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              ListTile(
                title: Text(
                  'Warrior pose - Virabhadrasana',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text(
                        '🕛 15 Mins',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton(
                        value: check == 1
                            ? time[0]
                            : check == 2
                                ? _selectedTimeRange
                                : time[0],
                        items: time.map((timerange) {
                          return DropdownMenuItem(
                            child: Text(timerange),
                            value: timerange,
                          );
                        }).toList(),
                        onChanged: (timerange) async {
                          check = 2;
                          print(check.toString());
                          setState(() {
                            _selectedTimeRange = timerange!;
                          });

                          print("You selected: $timerange");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 165,
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/img1.png',
                        width: 30,
                      ),
                      title: Text(
                        "30 Days\nSession",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      // subtitle: Text("Session"),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/img2.png',
                        width: 30,
                      ),
                      title: Text(
                        "40-45 minutes/\nClass",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 165,
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/img3.png',
                        width: 30,
                      ),
                      title: Text(
                        "Virtual Class +\nQnA chat",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      // subtitle: Text("Session"),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/img4.png',
                        width: 30,
                      ),
                      title: Text(
                        "Start from 04\nsep 2023",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8),
                child: Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'''),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 5),
        child: ElevatedButton(
          child: Text('Buy'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: greenColorbg,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
