import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'mtc_congratulation.dart';

class ForgotVerificationPin extends StatefulWidget {
  
  const ForgotVerificationPin({Key? key}) : super(key: key);

  @override
  State<ForgotVerificationPin> createState() => _ForgotVerificationPinState();
}

class _ForgotVerificationPinState extends State<ForgotVerificationPin> {
  bool acceptTerms = false;

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
                      height: 230.h,
                      width: 300.w,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
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
                            padding: EdgeInsets.only(left: 30.w),
                            child: Text(
                              'Forgot pin',
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 27,
                                  color: Colors.white,
                                )
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
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w, bottom: 0.h),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create your pin',
                          style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'You can now create a new pin for your account.',
                         style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                ),
                        ),
                        SizedBox(height: 30.h),
                         Text(
                          'Create PIN',
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.bottomRight,
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 4,
                            //textStyle: FlutterFlowTheme.of(context).bodyLarge,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            enableActiveFill: false,
                            autoFocus: false,
                            enablePinAutofill: false,
                            errorTextSpace: 16,
                            showCursor: true,
                            cursorColor: Color(0xFF4B39EF),
                            obscureText: false,
                            hintCharacter: '*',
                            pinTheme: PinTheme(
                              fieldHeight: 44,
                              fieldWidth: 44,
                              borderWidth: 2,
                              borderRadius: BorderRadius.circular(12),
                              shape: PinCodeFieldShape.underline,
                              activeColor: Color(0xff1674BB),
                              inactiveColor: Color(0xff1674BB),
                              selectedColor: Color(0xFFF8F8F8),
                              activeFillColor: Color(0xff1674BB),
                              inactiveFillColor: Color(0xFFE0E3E7),
                              selectedFillColor: Color(0xFFF8F8F8),
                            ),
                            //controller: _model.pinCodeController,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            // validator: _model.pinCodeControllerValidator.asValidator(context),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Confirm PIN',
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.bottomRight,
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 4,
                            //textStyle: FlutterFlowTheme.of(context).bodyLarge,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            enableActiveFill: false,
                            autoFocus: false,
                            enablePinAutofill: false,
                            errorTextSpace: 16,
                            showCursor: true,
                            cursorColor: Color(0xFF4B39EF),
                            obscureText: false,
                            hintCharacter: '*',
                            pinTheme: PinTheme(
                              fieldHeight: 44,
                              fieldWidth: 44,
                              borderWidth: 2,
                              borderRadius: BorderRadius.circular(12),
                              shape: PinCodeFieldShape.underline,
                              activeColor: Color(0xff1674BB),
                              inactiveColor: Color(0xff1674BB),
                              selectedColor: Color(0xFFF8F8F8),
                              activeFillColor: Color(0xff1674BB),
                              inactiveFillColor: Color(0xFFE0E3E7),
                              selectedFillColor: Color(0xFFF8F8F8),
                            ),
                            //controller: _model.pinCodeController,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            // validator: _model.pinCodeControllerValidator.asValidator(context),
                          ),
                        ),
                        SizedBox(height: 60.h),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Color(0xffe0e4e7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // Set the desired border radius here
                                    ),
                                    // title: Center(
                                    //   child: Text(
                                    //     'Number Confirmation',
                                    //     style: TextStyle(
                                    //       fontWeight: FontWeight.bold,
                                    //       fontSize: 20,
                                    //     ),
                                    //   ),
                                    // ),
                                    content: Container(
                                      height: 439,
                                      width: 327,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 193,
                                            width: 217,
                                            child: Image(
                                              image: AssetImage(
                                                  'images/Account Created (1).png'),
                                            ),
                                          ),
                                           SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                              child: Text(
                                            'Want to Logout?',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 24,
                                            ),
                                          )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              'You will need to sign in again\n once you log out',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Center(
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12), // Set the desired border radius here
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 30,
                                                        vertical: 20),
                                                child: Text(
                                                  'Logout now',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                            },
                            color: const Color(0xff2495D2),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 99.w),
                              child: Text(
                                'Update',
                                style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.white,
                                    )
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
          ],
        ),
      ),
    );
  }
}
