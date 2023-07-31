import 'package:flutter/material.dart';
import 'package:homedemo/sales.dart';
import 'package:homedemo/transfer.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationHome extends StatefulWidget {
  const NavigationHome({super.key});

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.4,
            decoration: BoxDecoration(
              color: Color(0xFF2495D2),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 204,
                    height: 59,
                    decoration: BoxDecoration(
                      color: Color(0xFF2495D2),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Image(
                            image: AssetImage('images/img.png'),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3, top: 3),
                              child: Text(
                                'Hello Immanuel,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Welcome back',
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 147,
                    height: 188,
                    decoration: BoxDecoration(
                      color: Color(0xFF2495D2),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height * 1,
                          decoration: BoxDecoration(
                            color: Color(0xFF2495D2),
                          ),
                          child: Image(
                            image: AssetImage(
                                'images/phone-removebg-preview 1.png'),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: IconButton(
                            // borderColor: Color(0xFF2495D2),
                            // buttonSize: 40,
                            // fillColor: Color(0xFF2495D2),
                            icon: Icon(
                              Icons.notifications,
                              // color:
                              //     FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //first stack
          Padding(
            padding: EdgeInsets.only(top: 285),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.68,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 160),
                        child: Row(
                          children: [
                            Text(
                              'Recent Transactions',
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 175),
                              child: TextButton(
                                onPressed: () {},
                                child: Text('See all',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 269,

                      //color: Colors.deepOrange,
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            child: ListTile(
                              title: Text(
                                'MTC',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              leading: Image(
                                  image: AssetImage(
                                      'images/mtc-spectra-logo 1.png')),
                              subtitle: Text(
                                'Airtime',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.grey
                                ),
                              ),
                              trailing: Text(
                                'N\$18000.00',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                child: Material(
                  //color: Colors.orange,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 327,
                    height: 172,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 7, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My Balance',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                // style:
                                //     FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                'N\$ 3000.00',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFCBCBCB),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 90),
                          child: Container(
                            height: 100,
                            //color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          height: 46,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Color(0xFF2495D2),
                                          ),
                                          child: Image(
                                              image: AssetImage(
                                                  'images/Top up.png')),
                                        ),
                                      ),
                                      Text(
                                        'Transfer',
                                        style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(),
                                      ),
                                    );
                                  },
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SalesPage(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          height: 46,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Color(0xFF2495D2),
                                          ),
                                          child: Image(
                                              image:
                                                  AssetImage('images/Pay.png')),
                                        ),
                                      ),
                                      Text(
                                        'Sales',
                                        style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
