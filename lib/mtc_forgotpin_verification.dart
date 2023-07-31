import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'mtc_forgotpin_createpin.dart';


class ForgotVerification extends StatefulWidget {
  final String id;
  final String phonenumber;
  
  const ForgotVerification({
    Key? key, 
    required this.id,
    required this.phonenumber,
    }) : super(key: key);

  @override
  State<ForgotVerification> createState() => _ForgotVerificationState();
}

class _ForgotVerificationState extends State<ForgotVerification> {

  bool acceptTerms = false;
  String firstfour ='';
  String lasttwo = '';

  @override
  void initState() {
    super.initState();
    firstfour = widget.phonenumber.substring(0, 4);
   lasttwo = widget.phonenumber.substring(widget.phonenumber.length-2);
  }


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
                          'Enter the \nVerifcation code',
                          style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 7.h),
                        Text(
                          'We sent a Verification to $firstfour****$lasttwo \ncheck your inbox',
                          style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                ),
                        ),
                        SizedBox(height: 60.h),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                        SizedBox(
                          height: 20.h,
                        ),
                        const Text(
                          '2:53 min',
                          style: TextStyle(
                           fontFamily: 'Readex Pro',
          fontWeight: FontWeight.bold,
                            ),
                        ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Didn\’t get a text?',
                                style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {  },
                                child: Text(
                                  'Send again',
                                  style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    )
                                ),
                              )
                            ],
                          ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ForgotVerificationPin(),
                                  ),
                                );
                            },
                            color: const Color(0xff2495D2),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 99.w),
                              child: Text(
                                'Verify',
                                style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
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
