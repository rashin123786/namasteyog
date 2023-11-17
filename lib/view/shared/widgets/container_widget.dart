import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/styles.dart';

//========= Onboard Widget===========================>
class ContainerOnboardingWidget extends StatelessWidget {
  const ContainerOnboardingWidget({
    super.key,
    required this.checkColor,
  });
  final int checkColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: checkColor == 1 ? greenColorbg : greyColorbg,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        wSizedBox10,
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: checkColor == 2 ? greenColorbg : greyColorbg,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        wSizedBox10,
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: checkColor == 3 ? greenColorbg : greyColorbg,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}

//========== Goal SCreen Container===================>

class GoalContainerWidget extends StatelessWidget {
  const GoalContainerWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
  final String title;
  final String subtitle;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ListTile(
          title: Text(
            title,
            style: headingStyle.copyWith(fontSize: 18),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            trailing,
            style: TextStyle(fontSize: 25),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
      ),
    );
  }
}
