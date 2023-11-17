import 'package:flutter/material.dart';

class ReUsebaleTexFormField extends StatelessWidget {
  const ReUsebaleTexFormField({
    super.key,
    required this.text,
    required this.keyboardType,
    required this.checkStyle,
  });
  final String text;
  final TextInputType keyboardType;
  final bool checkStyle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style:
            TextStyle(color: checkStyle == true ? Colors.grey : Colors.black),
      ),
      subtitle: SizedBox(
        height: 50,
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}
