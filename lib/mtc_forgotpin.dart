import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';

import 'mtc_forgotpin_verification.dart';
import 'mtc_login.dart';
import 'mtc_register.dart';
//import 'mtc_register.dart';
//import 'mtc_verification.dart';

//import 'mtc_login_registration.dart';

class ForgotPin extends StatefulWidget {
  const ForgotPin({Key? key}) : super(key: key);


  @override
  State<ForgotPin> createState() => _ForgotPinState();
}

class _ForgotPinState extends State<ForgotPin> {
  // bool acceptTerms = false;
  final _mykey = GlobalKey<FormState>();
  final id = TextEditingController();
  final phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        height: MediaQuery.of(context).size.height,
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
                child: SizedBox(
                  height: double.infinity,
                  child: Center(
                    child: SizedBox(
                      height: 230,
                      width: 300,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: const Icon(Icons.arrow_back_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'Forgot pin',
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 27,
                                  color: Colors.white,
                                ),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 0),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _mykey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We\'ll get you \nback soon',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Enter your ID number',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: id,
                             validator: (value) {
                              if(value == null || value.isEmpty){
                                return 'Enter your ID number';
                              } else if(value.length<10){
                                return 'Provide a valid ID number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your ID number',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                                border: OutlineInputBorder(
                                  
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                                ),
                                
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Enter your phone number',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phonenumber,
                           validator: (value) {
                              if(value == null || value.isEmpty){
                                return 'Enter your phone number';
                              }else if(value.length<10){
                                return 'Provide a valid phone number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                                border: OutlineInputBorder(
                                  //borderRadius: BorderRadius.circular(15),
                                  
                                ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_mykey.currentState!.validate()){
                                   Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => ForgotVerification(
                                                            phonenumber: phonenumber.text,
                                                            id: id.text,
                                                          ),
                                  ),);
                                }
                               
                              },
                              // color: const Color(0xff2495D2),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 99),
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
                          ),
                  
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account yet?',
                              style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterPage()),
                                    );
                                  },
                                  child: Text(
                                    'Register',
                                    style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
