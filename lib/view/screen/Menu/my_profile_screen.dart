import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'share',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notification_important),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                    value: 'share',
                    child: ListTile(
                      title: Text('Notification 1'),
                      subtitle: Text(
                        "xxxxxxxxxxxxx",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )),
                PopupMenuItem(
                    value: 'share',
                    child: ListTile(
                      title: Text('Notification 2'),
                      subtitle: Text(
                        "xxxxxxxxxxxxx",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )),
                PopupMenuItem(
                    value: 'share',
                    child: ListTile(
                      title: Text('Notification 3'),
                      subtitle: Text(
                        "xxxxxxxxxxxxx",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )),
              ];
            },
            onSelected: (String value) {
              print('You Click on po up menu item');
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/rectangle.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Hello,Dear',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 40, top: 20, right: 10),
              child: Table(
                //  border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('AGE:'),
                    Text('20'),
                  ]),
                  TableRow(children: [
                    Text('Gender: Male'),
                    Text('Male'),
                  ]),
                  TableRow(children: [
                    Text('Email id:'),
                    ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 40, maxWidth: 10),
                        child: Text('Namasteyog@gmail.com')),
                  ]),
                  TableRow(children: [
                    Text('Phone No:'),
                    Text('(+91) 8877665544'),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
              child: Text(
                'Your Course',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 5,
                        child: Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(237, 237, 241, 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text('Fleee'),
                              ),
                              Text(
                                'Bikram Yoga',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 5,
                        child: Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(237, 237, 241, 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text('Fleee'),
                              ),
                              Text(
                                'Bikram Yoga',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 5,
                        child: Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(237, 237, 241, 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text('Fleee'),
                              ),
                              Text(
                                'Bikram Yoga',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
