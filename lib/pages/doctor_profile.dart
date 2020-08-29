import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medline/pages/chat_screen.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  Razorpay razorpay;
  bool datebutton1 = false;
  bool datebutton2 = false;
  bool datebutton3 = false;
  bool datebutton4 = false;
  bool datebutton5 = false;
  bool datebutton6 = false;

  bool datebutton7 = false;
  bool datebutton8 = false;
  bool datebutton9 = false;
  bool datebutton10 = false;
  bool datebutton11 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_bWKZ5iU9pYUE9i",
      "amount": 500 * 100,
      "name": "Medline",
      "description": "Payment for the some random product",
      "prefill": {"contact": "9896728762", "email": "nabhan710hanif@gmail.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print("Pament success");
  }

  void handlerErrorFailure() {
    print("Pament error");
  }

  void handlerExternalWallet() {
    print("External Wallet");
  }

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 110.0,
                        height: 110.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage('asset/doctor.jpg'),
                            ))),
                  ),
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Rick',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Covid', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 5),
                        Text('MBBS, MS'),
                      ]),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff9dfff1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.textsms, color: Colors.black54),
                          SizedBox(width: 10),
                          Text('Consultation Fees',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black54)),
                        ],
                      ),
                      Text('₹500',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Available Slots',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border(
                              top: BorderSide(color: Colors.orange),
                              bottom: BorderSide(color: Colors.orange),
                              left: BorderSide(color: Colors.orange),
                              right: BorderSide(color: Colors.orange),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Today',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton1 = true;

                                        //bool datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;
                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton1
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton2 = true;

                                        datebutton1 = false;
                                        //datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton2
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton3 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        // datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton3
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton4 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        //bool datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton4
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton5 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        //datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton5
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton6 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        //datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton6
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text('Tomorrow',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton7 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        //datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton7
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton8 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        //datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton8
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton9 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        //datebutton9 = false;
                                        datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton9
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(width: 8),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton10 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        //datebutton10 = false;
                                        datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton10
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                  SizedBox(width: 15),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        datebutton11 = true;

                                        datebutton1 = false;
                                        datebutton2 = false;
                                        datebutton3 = false;
                                        datebutton4 = false;
                                        datebutton5 = false;
                                        datebutton6 = false;

                                        datebutton7 = false;
                                        datebutton8 = false;
                                        datebutton9 = false;
                                        datebutton10 = false;
                                        //datebutton11 = false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0,
                                    child: Text('7:00 AM'),
                                    color: datebutton11
                                        ? Colors.orange
                                        : Color(0xffffc75b),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  openCheckout();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                child: Text('Pay & Book Appointment',
                    style: TextStyle(fontSize: 18, color: Colors.black54)),
                color: Color(0xff9dfff1),
                elevation: 0,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    top: BorderSide(color: Color(0xff9dfff1)),
                    bottom: BorderSide(color: Color(0xff9dfff1)),
                    left: BorderSide(color: Color(0xff9dfff1)),
                    right: BorderSide(color: Color(0xff9dfff1)),
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('Chat',
                      style: TextStyle(fontSize: 18, color: Colors.black54)),
                  color: Colors.white,
                  elevation: 0,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
