import 'package:flutter/material.dart';
import 'package:kelas/auth/login.dart';
import 'package:kelas/auth/register.dart';
import 'package:kelas/layout/app.dart';
import 'package:kelas/home/home_page.dart';
import 'package:kelas/presensi/presensi_page.dart';
import 'package:kelas/profile/profile.dart';
import 'package:kelas/task/task.dart';
// import 'firebase_options.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const Navbar(),
        '/homePage': (context) => const HomePage(),
        '/task': (context) => const Task(),
        '/presensi': (context) => const Presensi(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
