import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AwehAirtime extends StatefulWidget {
  const AwehAirtime({Key? key}) : super(key: key);

  @override
  State<AwehAirtime> createState() => _AwehAirtimeState();
}

class _AwehAirtimeState extends State<AwehAirtime> {
  final List<String> _listOfBundles = [
    'Select Bundle',
    'Prepaid',
    'Postpaid',
  ];
  final List<String> _listOfPayment = [
    'Select Bundle',
    'Pre-payment',
    'Invoice Payment',
  ];
  String productBundle = 'Select Bundle';
  String productPayment = 'Select Bundle';

  bool awehButtonClicked = false;

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
                              'MTC',
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
                  margin:
                      EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topLeft,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // Change the button color based on the boolean value
                                backgroundColor: !awehButtonClicked
                                    ? Colors.blue
                                    : Colors.white,
                                // col: isSecondButtonPressed ? Colors.red : null,
                              ),
                              onPressed: () {
                                if (awehButtonClicked == false) {
                                  return null;
                                } else {
                                  setState(() {
                                    awehButtonClicked = !awehButtonClicked;
                                  });
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                child: Text(
                                  'Airtime',
                                  style: TextStyle(
                                    color: !awehButtonClicked
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // Change the button color based on the boolean value
                                backgroundColor: awehButtonClicked
                                    ? Colors.blue
                                    : Colors.white,
                                // col: isSecondButtonPressed ? Colors.red : null,
                              ),
                              onPressed: () {
                                if (awehButtonClicked == true) {
                                  return null;
                                } else {
                                  setState(() {
                                    awehButtonClicked = !awehButtonClicked;
                                  });
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                child: Text(
                                  'Aweh',
                                  style: TextStyle(
                                    color: awehButtonClicked
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text('Choose a bundle'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Center(
                            child: Container(
                              height: 59,
                              width: 329,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 60,
                                width: 250,
                                //color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: DropdownButtonFormField(
                                    value: productBundle,
                                    items: _listOfBundles
                                        .map(
                                          (e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        productBundle = val as String;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.arrow_drop_down_circle,
                                      color: Colors.deepPurple,
                                    ),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (productBundle == 'Prepaid')
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Enter your number'),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  //controller: constituency,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter your number';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Enter your number ',
                                    border: OutlineInputBorder(
                                        //borderRadius: BorderRadius.circular(15),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 169,
                                    width: 389,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), // Shadow color with opacity
                                            spreadRadius:
                                                2, // How far the shadow should spread (positive values for expansion, negative for shrinkage)
                                            blurRadius:
                                                5, // The blur radius of the shadow
                                            offset: Offset(0, 3),
                                            // The offset of the shadow (x, y)
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            AwehAirtime()));
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 100,
                                                    child: Image(
                                                      image: AssetImage(
                                                          'images/MTC Vouchers_2017_53.34x9.8mm-02[5] (1).png'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            AwehAirtime()));
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 34,
                                                    width: 85,
                                                    child: Image(
                                                      image: AssetImage(
                                                          'images/Frame 52874.png'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            AwehAirtime()));
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 34,
                                                    width: 85,
                                                    child: Image(
                                                      image: AssetImage(
                                                          'images/Frame 52874.png'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 34,
                                                  width: 85,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/Frame 52874.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Center(
                                            child: Container(
                                              height: 40,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(
                                                        0.5), // Shadow color with opacity
                                                    spreadRadius:
                                                        2, // How far the shadow should spread (positive values for expansion, negative for shrinkage)
                                                    blurRadius:
                                                        5, // The blur radius of the shadow
                                                    offset: Offset(0, 3),
                                                    // The offset of the shadow (x, y)
                                                  ),
                                                ],
                                              ),
                                              child: Row(children: [
                                                Container(
                                                  height: 40,
                                                  width: 300,
                                                  //color: Colors.red,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0),
                                                    child: TextFormField(
                                                      textAlign:
                                                          TextAlign.center,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Enter amount',
                                                        alignLabelWithHint:
                                                            true,
                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 99),
                                        child: Text(
                                          'Proceed',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (productBundle == 'Postpaid')
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Text('Choose payment method'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Center(
                                      child: Container(
                                        height: 59,
                                        width: 329,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Container(
                                          height: 60,
                                          width: 250,
                                          //color: Colors.red,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0, right: 0),
                                            child: DropdownButtonFormField(
                                              value: productPayment,
                                              items: _listOfPayment
                                                  .map(
                                                    (e) => DropdownMenuItem(
                                                      child: Text(e),
                                                      value: e,
                                                    ),
                                                  )
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  productPayment =
                                                      val as String;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Colors.deepPurple,
                                              ),
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (productPayment == 'Pre-payment')
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 0, right: 0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Enter your number'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextFormField(
                                            //controller: constituency,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter your number';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Enter your number ',
                                              border: OutlineInputBorder(
                                                  //borderRadius: BorderRadius.circular(15),
                                                  ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Enter your number'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextFormField(
                                            //controller: constituency,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter your amount';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Enter your amount ',
                                              border: OutlineInputBorder(
                                                  //borderRadius: BorderRadius.circular(15),
                                                  ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, bottom: 20),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 15,
                                                      horizontal: 99),
                                                  child: Text(
                                                    'Proceed',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (productPayment == 'Invoice Payment')
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 0, right: 0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Enter your number'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextFormField(
                                            //controller: constituency,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter your number';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Enter your number ',
                                              border: OutlineInputBorder(
                                                  //borderRadius: BorderRadius.circular(15),
                                                  ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Enter your number'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextFormField(
                                            //controller: constituency,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter your amount';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Enter your amount ',
                                              border: OutlineInputBorder(
                                                  //borderRadius: BorderRadius.circular(15),
                                                  ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, bottom: 20),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 15,
                                                      horizontal: 99),
                                                  child: Text(
                                                    'Proceed',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
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
          ],
        ),
      ),
    );
  }
}
