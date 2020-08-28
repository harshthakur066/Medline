import 'package:flutter/material.dart';

import 'package:medline/pages/doctor/dlogin.dart';


class DoctorSignupScreen extends StatefulWidget {
  @override
  _DoctorSignupScreenState createState() => _DoctorSignupScreenState();
}

class _DoctorSignupScreenState extends State<DoctorSignupScreen> {
  @override
  Widget build(BuildContext context) {
    final phoneHeight = MediaQuery.of(context).size.height;
    var person = Icons.person;
    var demail = '';
    var dpassword = '';

    return Scaffold(
      body: Container(
        //height: phoneHeight,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Please enter your credentials'),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          demail = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Email ID',
                        prefixIcon: Icon(Icons.email, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          dpassword = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        prefixIcon:
                            Icon(Icons.vpn_key, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorSignupScreen2()));
                      },
                      child: Text('NEXT',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      height: 50,
                      minWidth: double.infinity,
                      color: Color(0xFF08ffbd),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorLoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Registered?'),
                          SizedBox(width: 5),
                          Text(
                            'Login!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorSignupScreen2 extends StatefulWidget {
  @override
  _DoctorSignupScreen2State createState() => _DoctorSignupScreen2State();
}

class _DoctorSignupScreen2State extends State<DoctorSignupScreen2> {
  @override
  var dname = '';
  var dnumber = '';
  var dlic = '';
  var special = '';
  var degree = '';
  var fees = '';
  Widget build(BuildContext context) {
    final phoneHeight = MediaQuery.of(context).size.height;
    var person = Icons.person;
    var dropdownValue = 'Choose Specialization';
    return Scaffold(
      body: Container(
        //height: phoneHeight,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),

          child: Align(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Please enter your credentials'),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          //obscureText: obscureText,
                          decoration: InputDecoration(
                            hintText: 'Enter Full Name',
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xFF08ffbd)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[400],
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          dnumber = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile Number',
                        prefixIcon: Icon(Icons.phone, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],

                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          dlic = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter License Number',
                        prefixIcon:
                            Icon(Icons.verified_user, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],

                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 10),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(50),
                    //       border: Border(
                    //         bottom: BorderSide(color: Colors.black38),
                    //         top: BorderSide(color: Colors.black38),
                    //         left: BorderSide(color: Colors.black38),
                    //         right: BorderSide(color: Colors.black38),
                    //       )),
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.verified, color: Color(0xFF08ffbd)),
                    //         SizedBox(width: 10),
                    //         DropdownButton(
                    //           value: dropdownValue,
                    //           icon: Icon(Icons.keyboard_arrow_down),
                    //           //elevation: 0,
                    //           style: TextStyle(
                    //               color: Colors.black54, fontSize: 16),
                    //           onChanged: (String newValue) {
                    //             setState(() {
                    //               dropdownValue = newValue;
                    //             });
                    //           items: <String>[
                    //             'Choose Specialization',
                    //             'General Physician',
                    //             'Child Specialist',
                    //             'Dermatologist',
                    //             'Dentist',
                    //           ].map<DropdownMenuItem<String>>((String value) {
                    //             return DropdownMenuItem<String>(
                    //               value: value,
                    //               child: Text(value),
                    //             );
                    //           }).toList(),

                    //           },
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          special = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Specialization',
                        prefixIcon:
                            Icon(Icons.verified_user, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          degree = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Degree(s)',
                        prefixIcon:
                            Icon(Icons.verified_user, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],

                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      //obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          fees = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Required Fee Amount',
                        prefixIcon:
                            Icon(Icons.payments, color: Color(0xFF08ffbd)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[400],

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('SIGN UP',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      height: 50,
                      minWidth: double.infinity,
                      color: Color(0xFF08ffbd),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorLoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Registered?'),
                          SizedBox(width: 5),
                          Text(
                            'Login!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,

                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('SIGN UP',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                          height: 50,
                          minWidth: double.infinity,
                          color: Color(0xFF08ffbd),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PatientLoginScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already Registered?'),
                              SizedBox(width: 5),
                              Text(
                                'Login!',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
