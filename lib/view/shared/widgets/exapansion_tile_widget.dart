import 'package:flutter/material.dart';

class expansionTileWidget extends StatelessWidget {
  const expansionTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        color: Color.fromRGBO(239, 239, 239, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Color.fromRGBO(239, 239, 239, 1)),
        ),
        child: ExpansionTile(
          title: Text(
            'Do you ever browse the internet',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 239, 239, 1),
                  border: Border.all(color: Color.fromRGBO(239, 239, 239, 1))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Do you ever browse the internet wondering how your favourite websites were built? Facebook',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
