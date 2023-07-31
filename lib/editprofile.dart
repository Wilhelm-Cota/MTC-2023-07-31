import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  void initState() {
    super.initState();
    // Initialize the settings. You can choose your cache provider, like SharedPrefsCache or MemoryCache.
  }

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
                              padding: EdgeInsets.only(left: 50.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Edit Profile',
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
                          'Full Name',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense:
                                true, // Reduce the overall height of the TextFormField
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            //hintText: 'Enter your amount ',
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Email Address',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense:
                                true, // Reduce the overall height of the TextFormField
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            //hintText: 'Enter your amount ',
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Phone Number',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense:
                                true, // Reduce the overall height of the TextFormField
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            //hintText: 'Enter your amount ',
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Address',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense:
                                true, // Reduce the overall height of the TextFormField
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 50, horizontal: 12),
                            //hintText: 'Enter your amount ',
                            border: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(15),
                                ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 99),
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
