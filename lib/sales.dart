import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mtcAwehAirtime.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {


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
                            padding: EdgeInsets.only(left: 60.0),
                            child: Text(
                              'Sales',
                              style: GoogleFonts.quicksand(
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
                  margin: EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 0),
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                        child: Text('Available Services',
                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                          ),
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: Container(
                              height: 374,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AwehAirtime()));
                                        },
                                        child: Column(
                                          children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                           decoration: BoxDecoration(
                                             color: Colors.blue,
                                             borderRadius:  BorderRadius.circular(40)
                                           ),
                                            child: Image(image: AssetImage('images/mtc-spectra-logo 1.png'),),
                                          ),
                                          SizedBox(height: 4,),
                                          Text('MTC',
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          ),
                                        
                                        ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius:  BorderRadius.circular(40)
                                         ),
                                          child: Image(image: AssetImage('images/water 1.png'),),
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Water',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      
                                      ],
                                      ),
                                      Column(
                                        children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                         decoration: BoxDecoration(
                                           color: Color(0xffD24E24),
                                           borderRadius:  BorderRadius.circular(40)
                                         ),
                                          child: Image(image: AssetImage('images/elec 1.png'),),
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Electricity',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      
                                      ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                           decoration: BoxDecoration(
                                             color: Colors.blue,
                                             borderRadius:  BorderRadius.circular(40)
                                           ),
                                            child: Image(image: AssetImage('images/DStv Nigeria Icon undefined.png'),),
                                          ),
                                          SizedBox(height: 4,),
                                          Text('DStv',
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          ),
                                        
                                        ],
                                        ),
                                        Column(
                                          children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius:  BorderRadius.circular(40)
                                           ),
                                            child: Image(image: AssetImage('images/Amazon Icon undefined.png'),),
                                          ),
                                          SizedBox(height: 4,),
                                          Text('GOtv',
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          ),
                                        
                                        ],
                                        ),
                                        Column(
                                          children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius:  BorderRadius.circular(40)
                                           ),
                                            child: Image(image: AssetImage('images/Amazon Icon undefined (1).png'),),
                                          ),
                                          SizedBox(height: 4,),
                                          Text('Entertainment',
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          ),
                                        
                                        ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                         decoration: BoxDecoration(
                                            color: Colors.white,
                                           borderRadius:  BorderRadius.circular(40)
                                         ),
                                          child: Image(image: AssetImage('images/Group 8921.png'),),
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Insurance',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      
                                      ],
                                      ),
                                      Column(
                                        children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                         decoration: BoxDecoration(
                                           color: Color(0xff3B363F),
                                           borderRadius:  BorderRadius.circular(40)
                                         ),
                                          child: Image(image: AssetImage('images/element-3.png'),),
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Coming soon',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      
                                      ],
                                      ),
                                      Column(
                                        children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                        //  
                                        ),
                                      
                                      ],
                                      ),
                                    ],
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
