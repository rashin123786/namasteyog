import 'package:flutter/material.dart';
import 'package:namasteyog/view/screen/profile/gender_screen.dart';
import 'package:namasteyog/view/shared/widgets/container_widget.dart';

import '../../../utils/styles.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ContainerOnboardingWidget(checkColor: 2),
              SizedBox(
                height: 40,
              ),
              Text(
                'Step 2 of 3',
                style: TextStyle(
                  color: greenColorbg,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'What is your goal?',
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GoalContainerWidget(
                title: 'Lose Weight',
                subtitle: 'Burn fat and get lean',
                trailing: "🔥",
              ),
              GoalContainerWidget(
                title: 'Get fitter',
                subtitle: 'Tone up and feel healthy',
                trailing: "⭐",
              ),
              GoalContainerWidget(
                title: 'Gain muscle',
                subtitle: 'Build mass and strength',
                trailing: "🏋",
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: ElevatedButton(
          child: Text('Next Step'),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GenderScreen(),
              )),
          style: ElevatedButton.styleFrom(
              backgroundColor: greenColorbg,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
