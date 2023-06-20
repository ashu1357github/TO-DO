import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:to_do_application_1/app_router/approuter_configiration.dart';
import 'package:to_do_application_1/mainhomepage.dart/mainhome.dart';
import 'package:to_do_application_1/service/auth_service.dart';
import 'package:to_do_application_1/welcomescreen/homepage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentpage = HomePage();
  AuthClass authClass = AuthClass();

  void initState() {
    super.initState();
    checklogin();
  }

  void checklogin() async {
    String? token = await authClass.getToken();
    if (token != null) {
      setState(() {
        currentpage = HomePage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // color: Colors.yellow/,
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRoute().router.routeInformationParser,
      routerDelegate: MyAppRoute().router.routerDelegate,
      restorationScopeId: 'MainHome',
    );
  }
}
