import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:google_fonts/google_fonts.dart';

import 'changepassword.dart';
import 'editprofile.dart';

class NavigationProfile extends StatefulWidget {
  const NavigationProfile({Key? key}) : super(key: key);

  @override
  State<NavigationProfile> createState() => _NavigationProfileState();
}

class _NavigationProfileState extends State<NavigationProfile> {
  static const keyValue = 'Key-Value';
  bool faceID = false;

  @override
  void initState() {
    super.initState();
    // Initialize the settings. You can choose your cache provider, like SharedPrefsCache or MemoryCache.
    Settings.init(cacheProvider: SharePreferenceCache());
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
                              padding: EdgeInsets.only(left: 15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Profile',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(56)),
                                      child: Image(
                                        image: AssetImage('images/img.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Immanuel Namuhuja',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
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
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 0),
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Personal Info',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SimpleSettingsTile(
                          leading: Icon(Icons.person),
                          title: 'Edit Profile',
                          titleTextStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EditProfile(),),);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Security',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        ),
                        SwitchSettingsTile(
                            title: 'Face ID',
                            settingKey: keyValue,
                             titleTextStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                            leading: Icon(Icons.face),
                            onChange: (p0) {
                              debugPrint('Key-for-face-id :{$p0}');
                            }),
                        SimpleSettingsTile(
                          leading: Icon(Icons.lock),
                          title: 'Change Password',
                           titleTextStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ChangePassword()));
                          },

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('General',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SimpleSettingsTile(
                          leading: Icon(Icons.language),
                          title: 'Language',
                           titleTextStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          onTap: () {},
                        ),
                        SimpleSettingsTile(
                          leading: Icon(Icons.help),
                          title: 'Help and Support',
                           titleTextStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton(

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
                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                              child: Text(
                                'LOGOUT',
                                style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                            fontSize: 16,
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
