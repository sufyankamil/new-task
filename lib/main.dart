import 'package:flutter/material.dart';
import 'package:task_screens/screens/SplashScreen.dart';
import 'package:task_screens/screens/TaskDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/task-detals': (context) => const TaskDetails(),
        // '/registration/details': (context) => DisplayDetails(
        //     firstName: '', lastName: '', email: '', phone: '', age: '', cv: ''),
      },
    );
  }
}
