import 'package:flutter/material.dart';
import 'package:medline/pages/doctor/dlogin.dart';
import 'package:medline/pages/patient/plogin.dart';

import 'package:medline/pages/patient/psignup.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final phoneHeight = MediaQuery.of(context).size.height;
    final phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: phoneHeight,
        width: phoneWidth,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text(
                    'Medline',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 65,
                      // fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Your online medical consultation portal.',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PatientLoginScreen()));
                  },
                  child: Text('PATIENT',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  height: 50,
                  minWidth: double.infinity,
                  color: Color(0xFF08ffbd),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                SizedBox(height: 15),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DoctorLoginScreen()));
                  },
                  child: Text('DOCTOR',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  height: 50,
                  minWidth: double.infinity,
                  color: Color(0xFF08ffbd),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
