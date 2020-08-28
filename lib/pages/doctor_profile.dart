import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('asset/doctor.jpg'),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Name'),
            SizedBox(
              height: 10,
            ),
            Text('Speciality'),
            SizedBox(
              height: 10,
            ),
            Text('Degrees'),
            SizedBox(
              height: 20,
            ),
            Text('SCHEDULE APPOINTMENT'),
          ],
        ),
      ),
    );
  }
}
