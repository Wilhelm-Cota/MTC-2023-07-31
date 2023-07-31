import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mtc_login.dart';
import 'mtc_login_registration.dart';
import 'mtc_register.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xff1674BB),
            const Color(
                0xff00A6D6), // Add your desired colors for the gradient here
          ],
        ),
      ),
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xff1674BB),
                    const Color(
                        0xff00A6D6), // Add your desired colors for the gradient here
                  ],
                ),
              ),
              //color: const Color(0xff274657),
              child: Container(
                height: double.infinity,
                child: Center(
                  child: Container(
                    height: 260.h,
                    width: 300.w,
                    //color: Colors.amber,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50.h),
                          child: Image(
                            image: const AssetImage('images/Group 162711.png'),
                            height: 150.h,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 37,
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: 'E',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 37,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: '-',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 37,
                                  color: Colors.red,
                                ),
                              ),
                              TextSpan(
                                text: 'VOUC',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 37,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: 'H',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 37,
                                  color: Colors.red,
                                ),
                              ),
                              TextSpan(
                                text: 'ER',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 37,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 10.h),
                            margin: EdgeInsets.only(top: 20.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black26,
                              //     offset: Offset(0, 2),
                              //     blurRadius: 4.0,
                              //   ),
                              // ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  //color: Colors.amber,
                                  border: Border.all(
                                    color: Colors
                                        .blue, // Add your desired border color here
                                    width: 0.5, // Add the width of the border
                                  ),
                                ),
                                height: 270,
                                width: 335,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 110, vertical: 20),
                                        child: Text(
                                          'LOGIN',
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Don\'t have an account?',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 99, vertical: 20),
                                        child: Text(
                                          'REGISTER',
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Text('@MTC 2023',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.blue,
                            decoration: TextDecoration.none,
                          ),
                          
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
