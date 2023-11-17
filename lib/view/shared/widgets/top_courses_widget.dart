import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class TopCousesWidget extends StatelessWidget {
  const TopCousesWidget({
    super.key,
    required this.size,
    required this.tutorPage,
  });

  final Size size;
  final bool tutorPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: greyColorbg,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/rectangle.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'course Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Text(
                      'Do you ever browse the internet',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    height: 2,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: tutorPage == false
                        ? RichText(
                            text: TextSpan(
                                text: "₹ 999/ Month        ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: [
                                TextSpan(
                                    text: 'onwards',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ))
                              ]))
                        : Text(
                            '9:00 Am to 11:00 Am',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
