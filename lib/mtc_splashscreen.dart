import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mtc_login_registration.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 10.h),
                        margin: EdgeInsets.only(top: 20.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 4.0,
                            ),
                          ],
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
                        child: Text('Hey! Welcome to MTC E-Voucher.',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: Container(
                            height: 223.h,
                            width: 332.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
      color: Colors.blue, // Add your desired border color here
      width: 0.5, // Add the width of the border
    ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            //margin: EdgeInsets.only(bottom: 90.h, left: 38.w),
                            child: Container(
                              height: 241.h,
                              width: 241.w,
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(255, 66, 72, 75),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Image(
                                image: const AssetImage(
                                  'images/ev.png',
                                ),
                                //fit: BoxFit.fitWidth,
                                width: 341.w,
                                height: 241.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Options(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 125.w,
                      ),
                      child: Text(
                        'Next',
                        style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.white,
                                    )
                      ),
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
