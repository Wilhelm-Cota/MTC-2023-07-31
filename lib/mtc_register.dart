import 'dart:io';
//import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:image_cropper/image_cropper.dart';
//import 'package:image_picker/image_picker.dart';
import 'mtc_verification.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final id = TextEditingController();
  final phonenumber = TextEditingController();
  final constituency = TextEditingController();

  bool fontImageSetId = false;
  bool backImageSetId = false;

  List<String> _fontImage = [];
  List<String> _backImage = [];

  List<String> _PassImage = [];

  String value = '1';
  String value2 = '2';

  // List _regions = [
  //   'Khomas',
  //   'Erongo'
  // ];
  // String _regionSelected = '';

  bool acceptTerms = false;

  File? _image;

  File? myimagePass;

  Future pickImagePass() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        myimagePass = imageTemporary;
      });
    } on PlatformException catch (e) {
      Navigator.pop(context);
    }
  }

  Future<File?> _cropImage({required File imageFile}) async {
    CroppedFile? croppedImage =
        await ImageCropper().cropImage(sourcePath: imageFile.path);
    if (croppedImage == null) return null;
    return File(croppedImage.path);
  }

  File? myimagefontID;

  Future pickImagefontId() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      debugPrint(imageTemporary.path);
      setState(() {
        myimagefontID = imageTemporary;
      });
    } on PlatformException catch (e) {
      Navigator.pop(context);
    }
  }
  Future pickImagefontIdEdit(File myimagefontID) async {
  try {
    File? imageTemporary = await _cropImage(imageFile: myimagefontID);
    if (imageTemporary == null) return;

    setState(() {
      myimagefontID = imageTemporary; // Update the state variable with the cropped image.
    });
  } on PlatformException catch (e) {
    Navigator.pop(context);
  }
}


  File? myimagebackId;

  Future pickImagebackId() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        myimagebackId = imageTemporary;
      });
    } on PlatformException catch (e) {
      Navigator.pop(context);
    }
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
                            padding: EdgeInsets.only(left: 60.w),
                            child: Text(
                              'Register',
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
                  margin: EdgeInsets.only(
                      top: 30.h, left: 20.w, right: 20.w, bottom: 0.h),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Register for free',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Welcome to E-Voucher',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'First Name',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            controller: firstname,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your first name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your first name',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  //borderRadius: BorderRadius.circular(15),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Last name',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            controller: lastname,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your last name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your last name',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(15),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'ID Number',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: id,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your ID number';
                              } else if (value.length < 10) {
                                return 'Provide a valid ID number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your ID',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(15),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Phone number',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phonenumber,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your phone number';
                              } else if (value.length < 10) {
                                return 'Provide a valid phone number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number ',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  //borderRadius: BorderRadius.circular(15),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Region',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          DropdownButtonFormField(
                              validator: (value) {
                                if (value == '1') {
                                  return 'Enter your Region';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Select region ',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                border: OutlineInputBorder(
                                    //borderRadius: BorderRadius.circular(15),
                                    ),
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Text('Select Region'),
                                  value: '1',
                                ),
                                DropdownMenuItem(
                                  child: Text('Erongo'),
                                  value: 'Erongo',
                                ),
                                DropdownMenuItem(
                                  child: Text('Hardap'),
                                  value: 'Hardap',
                                ),
                                DropdownMenuItem(
                                  child: Text('//Karas '),
                                  value: '//Karas ',
                                ),
                                DropdownMenuItem(
                                  child: Text('Kavango East'),
                                  value: 'Kavango East',
                                ),
                                DropdownMenuItem(
                                  child: Text('Kavango West'),
                                  value: 'Kavango West',
                                ),
                                DropdownMenuItem(
                                  child: Text('Khomas'),
                                  value: 'Khomas',
                                ),
                                DropdownMenuItem(
                                  child: Text('Kunene'),
                                  value: 'Kunene',
                                ),
                                DropdownMenuItem(
                                  child: Text('Ohangwena'),
                                  value: 'Ohangwena',
                                ),
                                DropdownMenuItem(
                                  child: Text('Omaheke'),
                                  value: 'Omaheke',
                                ),
                                DropdownMenuItem(
                                  child: Text('Omusati'),
                                  value: 'Omusati',
                                ),
                                DropdownMenuItem(
                                  child: Text('Oshana'),
                                  value: 'Oshana',
                                ),
                                DropdownMenuItem(
                                  child: Text('Oshikoto'),
                                  value: 'Oshikoto',
                                ),
                                DropdownMenuItem(
                                  child: Text('Otjozondjupa'),
                                  value: 'Otjozondjupa',
                                ),
                                DropdownMenuItem(
                                  child: Text('Zambezi'),
                                  value: 'Zambezi',
                                ),
                              ],
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              }),
                          SizedBox(height: 20.h),
                          Text(
                            'Constituency',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            controller: constituency,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your constituency';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Constituency ',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                  //borderRadius: BorderRadius.circular(15),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Document Scan',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          DropdownButtonFormField(
                              validator: (value) {
                                if (value == '2' || value!.isEmpty) {
                                  return 'Enter Document';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Select Document ',
                                border: OutlineInputBorder(
                                    //borderRadius: BorderRadius.circular(15),
                                    ),
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Text('Select Document'),
                                  value: '2',
                                ),
                                DropdownMenuItem(
                                  child: Text('Identity Card'),
                                  value: 'ID',
                                ),
                                DropdownMenuItem(
                                  child: Text('Passport'),
                                  value: 'Passport',
                                ),
                              ],
                              value: value2,
                              onChanged: (value) {
                                setState(() {
                                  value2 = value!;
                                });
                              }),

                          const SizedBox(
                            height: 10,
                          ),
                          if (value2 == 'ID')
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 220,
                                      width: 357,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30),
                                            child: Container(
                                              width: 345,
                                              height: 185,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: Colors.blue),
                                              ),
                                              child: myimagefontID != null
                                                  ? InkWell(
                                                      onTap: () {
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              AlertDialog(
                                                            backgroundColor:
                                                                Color(
                                                                    0xffe0e4e7),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20), // Set the desired border radius here
                                                            ),
                                                            content: Container(
                                                              width: 330,
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Image.file(
                                                        myimagefontID!,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      SizedBox(height: 5,),
                                                                  Center(
                                                                    child:
                                                                        TextButton(
                                                                      onPressed:
                                                                          () async {

                                                                           await pickImagefontIdEdit(myimagefontID!);
                                                                        // Naviga
                                                                        // tor.of(context)
                                                                        //     .pop();
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Edit',
                                                                        style: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Center(
                                                                    child:
                                                                        TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.of(context)
                                                                            .pop();
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Close',
                                                                        style: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Image.file(
                                                        myimagefontID!,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )
                                                  : Center(
                                                      child: Text(
                                                      'FONT SIDE',
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                    )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 320, top: 10),
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  pickImagefontId();
                                                  //_pickimage;
                                                  /*
                                                    dsgdxfvbcfvnbf

                                                  */
                                                },
                                                child: Icon(
                                                    color: Colors.white,
                                                    Icons.camera_alt_outlined),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 220,
                                      width: 357,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30),
                                            child: Container(
                                              width: 345,
                                              height: 185,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: Colors.blue),
                                              ),
                                              child: myimagebackId != null
                                                  ? Image.file(
                                                      myimagebackId!,
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Center(
                                                      child: Text(
                                                      'BACK SIDE',
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                    )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 320, top: 10),
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  pickImagebackId();
                                                },
                                                child: Icon(
                                                    color: Colors.white,
                                                    Icons.camera_alt_outlined),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          else if (value2 == 'Passport')
                            // Center(
                            //   child: SizedBox(
                            //     width: 300,
                            //     height: 60,
                            //     child: ElevatedButton.icon(
                            //       style: ElevatedButton.styleFrom(
                            //         backgroundColor: Colors.grey,
                            //       ),
                            //       onPressed: onDocPass,
                            //       icon: const Icon(
                            //         Icons.camera_alt,
                            //       ),
                            //       label: const Text(
                            //         'Capture Passport',
                            //         style: TextStyle(
                            //           fontSize: 18,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 220,
                                      width: 357,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30),
                                            child: Container(
                                              width: 345,
                                              height: 185,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: Colors.blue),
                                              ),
                                              child: myimagePass != null
                                                  ? Image.file(
                                                      myimagePass!,
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Center(
                                                      child: Text(
                                                      'PASSPORT',
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                    )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 320, top: 10),
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  pickImagePass();
                                                  // onDocIDFont();
                                                  /*
                                                    dsgdxfvbcfvnbf

                                                  */
                                                },
                                                child: Icon(
                                                    color: Colors.white,
                                                    Icons.camera_alt_outlined),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          if (value != '1' || value2 != '2')
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                // for (var picture in _PassImage)
                                //   Image.file(
                                //     File(picture),
                                //   ),
                              ],
                            ),

                          //         Center(
                          //           child: SizedBox(
                          //             width: 300,
                          //             height: 60,
                          //             child: ElevatedButton.icon(
                          //             style: ElevatedButton.styleFrom(
                          //               backgroundColor: Colors.grey,

                          //             ),
                          //               onPressed: (){
                          //                 showModalBottomSheet<void>(
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return Container(
                          //       height: 200,
                          //       color: const Color(0xff2495D2),
                          //       child: Center(
                          //         child: Column(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           mainAxisSize: MainAxisSize.min,
                          //           children: <Widget>[
                          //             TextButton(
                          //             child: Text('Capture ID',
                          //               style: TextStyle(
                          //                   fontSize: 18,
                          //                    color: Colors.white,
                          //                 ),),
                          //
                          //                 ),
                          //             SizedBox(
                          //               height: 2,
                          //             ),
                          //            TextButton(
                          //             child: Text('Capture Passport',
                          //               style: TextStyle(
                          //                   fontSize: 18,
                          //                    color: Colors.white,
                          //                 ),),
                          //
                          //                 ),
                          //             SizedBox(
                          //               height: 10,
                          //             ),
                          //             SizedBox(
                          //              width: 150,
                          //               height: 40,
                          //               child: ElevatedButton(
                          //                 style: ElevatedButton.styleFrom(
                          //               backgroundColor: Colors.grey,

                          //             ),
                          //                 child: const Text('Close',
                          //                  style: TextStyle(
                          //                   fontSize: 18,
                          //                    color: Colors.white,
                          //                 ),
                          //                 ),
                          //                 onPressed: () => Navigator.pop(context),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // );
                          //               },
                          //                icon: const Icon(
                          //                 Icons.camera_alt,

                          //                ),
                          //                label: const Text('Capture Documents',
                          //                style: TextStyle(
                          //                 fontSize: 18,
                          //                ),
                          //                ),),
                          //           ),
                          //         ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.h, horizontal: 30.w),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate() &&
                                      acceptTerms == true) {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        backgroundColor: Color(0xffe0e4e7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              20), // Set the desired border radius here
                                        ),
                                        title: Center(
                                          child: Text(
                                            'Number Confirmation',
                                            style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        content: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Center(
                                                child: Text(
                                                  phonenumber.text,
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                              Center(
                                                child: Text(
                                                  'Are you sure this is your',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: Text(
                                                  'number?',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 16.h),
                                              Divider(),
                                              SizedBox(height: 3.h),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Verification(
                                                          firstname:
                                                              firstname.text,
                                                          lastname:
                                                              lastname.text,
                                                          phonenumber:
                                                              phonenumber.text,
                                                          id: id.text,
                                                          constituency:
                                                              constituency.text,
                                                          value: value,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'Edit',
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                //color: const Color(0xff2495D2),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25.h, horizontal: 99.w),
                                  child: Text('Register',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.black),
                                  child: Checkbox(
                                    value: acceptTerms,
                                    checkColor: Colors.white,
                                    activeColor: Colors.black,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        acceptTerms = !acceptTerms;
                                      });
                                    },
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'By signing up, you agree to the ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Terms &\n Conditions and Privacy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}
