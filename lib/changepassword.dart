import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  void initState() {
    super.initState();
    // Initialize the settings. You can choose your cache provider, like SharedPrefsCache or MemoryCache.
  }

  bool _isPasswordVisible1 = true;
  bool _isPasswordVisible2 = true;
  bool _isPasswordVisible3 = true;
  bool visibilitytoall1 = true;
  bool visibilitytoall2 = true;
  bool visibilitytoall3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff2495D2),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xff2495D2),
                child: SizedBox(
                  height: double.infinity,
                  child: Center(
                    child: SizedBox(
                      height: 230,
                      width: 375,
                      child: Container(
                        decoration: new BoxDecoration(
                            //border: new Border.all(color: Colors.grey[500]),
                            //color: Colors.red,
                            ),
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
                              padding: EdgeInsets.only(left: 30.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Change Password',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                              // child: Text(
                              //   'Login',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 31,
                              //     decoration: TextDecoration.none,
                              //   ),
                              // ),
                            ),
                          ],
                        ),
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
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Old Password',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: visibilitytoall1,
                          decoration: InputDecoration(
                            hintText: 'Enter old Password ',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                _isPasswordVisible1
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible1 = !_isPasswordVisible1;
                                  visibilitytoall1 = !visibilitytoall1;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'New Password',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: visibilitytoall2,
                          decoration: InputDecoration(
                            hintText: 'Enter new Password ',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                _isPasswordVisible2
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible2 = !_isPasswordVisible2;
                                  visibilitytoall2 = !visibilitytoall2;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Confirm Password',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: visibilitytoall3,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password ',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                _isPasswordVisible3
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible3 = !_isPasswordVisible3;
                                  visibilitytoall3 = !visibilitytoall3;
                                });
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 20),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Set the desired border radius here
                                  ),
                                ),
                              ),
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
                                      height: 324,
                                      width: 327,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 190,
                                            width: 190,
                                            child: Image(
                                              image: AssetImage(
                                                
                                                  'images/Money_income-amico_1-removebg-preview.png'),
                                            ),
                                          ),
                                          Center(
                                              child: Text(
                                            'Success',
                                            style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            ),
                                          )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Center(
                                            child: Text(
                                              'Your password is successfully updated',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
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
                                                  'Continue',
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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 99),
                                child: Text(
                                  'Update',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
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
