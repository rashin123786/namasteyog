import 'package:flutter/material.dart';
import 'package:namasteyog/utils/styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none_rounded),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Card(
          //     // width: 100,
          //     // height: 20,
          //     // decoration: BoxDecoration(color: greenColorbg),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("Unread messages :- 1"),
          //     ),
          //   ),
          // ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Notification 1"),
            subtitle: Text("Description"),
            trailing: Icon(Icons.arrow_outward_sharp),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.greenAccent[100]),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("Notification 2"),
              subtitle: Text("Description"),
              trailing: Icon(Icons.arrow_outward_sharp),
            ),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Notification 3"),
            subtitle: Text("Description"),
            trailing: Icon(Icons.arrow_outward_sharp),
          )
        ],
      ),
    );
  }
}
