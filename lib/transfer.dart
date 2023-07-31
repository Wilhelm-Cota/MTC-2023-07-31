import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {

  final List<String> _listOfProduct = ['Select Account','MTC Maris','Tamba','Tango'];
  String productDefault = 'MTC Maris';

  final List<String> _listOfProductTo = ['Select Account','MTC Maris','Tamba','Tango'];
  String productDefaultTo = 'MTC Maris';
  bool acceptTerms = false;

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
                              icon: const Icon(Icons.arrow_back_ios),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60.0),
                            child: Text(
                              'Transfer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 31,
                                decoration: TextDecoration.none,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 10,),
                          child: Center(child: Text('Transfers made simple!'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: Container(
                              
                              height: 59,
                              width: 329,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                  spreadRadius: 2, // How far the shadow should spread (positive values for expansion, negative for shrinkage)
                                  blurRadius: 5, // The blur radius of the shadow
                                  offset: Offset(0, 3),
                                   // The offset of the shadow (x, y)
                                ),
                              ],
                                
                              ),
                              child: Row(children: [
                                Container(
                                  height: 60,
                                  width: 250,
                                  //color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: DropdownButtonFormField(
                                      value: productDefault,
                                      items:  _listOfProduct.map((e) => DropdownMenuItem(child: Text(e),value: e,),).toList(),
                                      onChanged: (val){
                                        setState(() {
                                          productDefault = val as String;
                                        });
                                      },
                                      icon: Icon(Icons.arrow_drop_down_circle,
                                      color: Colors.deepPurple,),
                                      decoration: InputDecoration(border: InputBorder.none,),
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('From'),
                                )
                              ]),
                              // child: Row(
                              //   children: [
                              //     DropdownButtonFormField(
                              //       value: productDefault,
                              //       items:  _listOfProduct.map((e) => DropdownMenuItem(child: Text(e),value: e,),).toList(),
                              //       onChanged: (val){
                              //         setState(() {
                              //           productDefault = val as String;
                              //         });
                              //       })
                              //   ],
                              // ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Center(
                            child: Container(
                              
                              height: 59,
                              width: 329,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                  spreadRadius: 2, // How far the shadow should spread (positive values for expansion, negative for shrinkage)
                                  blurRadius: 5, // The blur radius of the shadow
                                  offset: Offset(0, 3),
                                   // The offset of the shadow (x, y)
                                ),
                              ],
                                
                              ),
                              child: Row(children: [
                                Container(
                                  height: 60,
                                  width: 250,
                                  //color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: DropdownButtonFormField(
                                      value: productDefaultTo,
                                      items:  _listOfProductTo.map((e) => DropdownMenuItem(child: Text(e),value: e,),).toList(),
                                      onChanged: (val){
                                        setState(() {
                                          productDefaultTo = val as String;
                                        });
                                      },
                                      icon: Icon(Icons.arrow_drop_down_circle,
                                      color: Colors.deepPurple,),
                                      decoration: InputDecoration(border: InputBorder.none,),
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('To'),
                                )
                              ]),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Center(
                            child: Container(
                              
                              height: 59,
                              width: 329,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                 border: Border.all(
              color: Colors.blue, // Set the border color here
              width: 0.1,         // Set the border width here
            ),
                              ),
                              child: Row(children: [
                                Container(
                                  height: 60,
                                  width: 315,
                                  //color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        
                  
                                        hintText: 'Reference',
                                        alignLabelWithHint: true,
                                        border: InputBorder.none,
                                      ),
                                      
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: Container(
                              
                              height: 59,
                              width: 329,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                 border: Border.all(
              color: Colors.blue, // Set the border color here
              width: 0.1,         // Set the border width here
            ),
                              ),
                              child: Row(children: [
                                Container(
                                  height: 60,
                                  width: 315,
                                  //color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        
                  
                                        hintText: 'Enter amount',
                                        alignLabelWithHint: true,
                                        border: InputBorder.none,
                                      ),
                                      
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60, bottom: 20),
                            child: ElevatedButton(
                              onPressed: (){
                                showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        backgroundColor: Color(0xffe0e4e7),
                                        title: Center(
                                          child: Container(
                                            child: Text(
                                              'Confirm',
                                              style: GoogleFonts.plusJakartaSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // Set the desired border radius here
                                    ),
                                        content: Container(
                                          width: 350,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Center(
                                                child: Text(
                                                 'N\$ 4000.00',
                                                  style: GoogleFonts.plusJakartaSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  'Are you sure you want\nto transfer  this amount?',
                                                  style: GoogleFonts.plusJakartaSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                                ),
                                              ),
                                              SizedBox(height: 16),
                                              Divider(),
                                              SizedBox(height: 3),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        backgroundColor: Color(0xffe0e4e7),
                                        title: Center(
                                          child: Container(
                                            child: Text(
                                              'Transfer completed',
                                              style: GoogleFonts.plusJakartaSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // Set the desired border radius here
                                    ),
                                        content: Container(
                                          width: 350,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                child: Container(
                                                  height: 54,
                                                  width: 54,
                                                  child: Image(image: AssetImage('images/happy_light.png'),))
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  'You have successfully transferred',
                                                  style: GoogleFonts.plusJakartaSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                
                                              ),
                                                ),
                                              ),   
                                              SizedBox(height: 10),          
                                              Center(child: Text('N\$ 470.00')),
                                              Divider(),
                                              SizedBox(height: 15),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                   Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'OK',
                                                    style: GoogleFonts.plusJakartaSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
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
                                                  child: Text(
                                                    'Yes',
                                                    style: GoogleFonts.plusJakartaSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 3),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'No',
                                                    style: GoogleFonts.plusJakartaSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
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
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 99),
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      fontSize: 23,
                                  ),
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
