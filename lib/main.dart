import 'package:flutter/material.dart';
import 'package:namasteyog/controller/provider/bottom_nav_controller.dart';
import 'package:namasteyog/utils/styles.dart';
import 'package:namasteyog/view/screen/OnboardingScreen/first_onboard_scree.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: greyColorbg),
          useMaterial3: true,
        ),
        home: const FirstOnboardScreen(),
      ),
    );
  }
}
