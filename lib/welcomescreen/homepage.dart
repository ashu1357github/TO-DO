import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:to_do_application_1/app_router/app_route_constant.dart';
import 'package:to_do_application_1/signin.dart';
import 'package:to_do_application_1/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#142453"),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: 120)),
              CircleAvatar(
                backgroundImage: AssetImage("assets/Task2.jpg"),
                radius: 180,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome To  Go Task ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "  Create an account to save all schedules \n "
                  "  and access them from anywhere.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        HexColor("#246BFD"), //background color of button
                    //border width and color
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(250, 60),

                    //content padding inside button
                  ),
                  onPressed: (() {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstant.signinRouteName);
                  }),
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        HexColor("#142453"), //background color of button
                    //border width and color
                    side: BorderSide(width: 2, color: HexColor("#246BFD")),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),

                    minimumSize: Size(250, 60),

                    //content padding inside button
                  ),
                  onPressed: (() {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstant.signupRouteName);
                  }),
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
