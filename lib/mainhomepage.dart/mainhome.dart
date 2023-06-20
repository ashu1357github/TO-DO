import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_application_1/app_router/app_route_constant.dart';
import 'package:to_do_application_1/service/auth_service.dart';
import 'package:to_do_application_1/signup.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  AuthClass authClass = AuthClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() async {
                await authClass.logout();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              }),
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
