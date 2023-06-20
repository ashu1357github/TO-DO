import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_application_1/mainhomepage.dart/mainhome.dart';
import 'package:to_do_application_1/phoneauth/phone.dart';

import 'package:to_do_application_1/welcomescreen/homepage.dart';
import 'package:to_do_application_1/app_router/app_route_constant.dart';
import 'package:to_do_application_1/signin.dart';
import 'package:to_do_application_1/signup.dart';

class MyAppRoute {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'Home',
        pageBuilder: (context, state) {
          return MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        path: '/signin',
        name: MyAppRouteConstant.signinRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: SignIn());
        },
      ),
      GoRoute(
        path: '/signup',
        name: MyAppRouteConstant.signupRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: SignUp());
        },
      ),
      GoRoute(
        path: '/homepage',
        name: MyAppRouteConstant.HomepageRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: MainHome());
        },
      ),
      GoRoute(
        path: '/phoneauth',
        name: MyAppRouteConstant.PhonepageRouteName1,
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginScreen());
        },
      ),
    ],
  );
}
