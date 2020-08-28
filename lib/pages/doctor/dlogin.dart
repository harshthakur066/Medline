import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:medline/pages/doctor/dhome.dart';
import 'package:medline/pages/doctor/dsignup.dart';
import 'package:medline/patient/psignup.dart';
=======
import 'package:medline/pages/patient/psignup.dart';
>>>>>>> master

class DoctorLoginScreen extends StatefulWidget {
  @override
  _DoctorLoginScreenState createState() => _DoctorLoginScreenState();
}

class _DoctorLoginScreenState extends State<DoctorLoginScreen> {
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
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Please enter your credentials'),
              SizedBox(height: 40),
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
                        hintText: 'Enter Username',
                        // prefix: Icon(Icons.person, color: Colors.orange),
                        prefixIcon:
                            Icon(Icons.person, color: Color(0xFF08ffbd)),
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
                    TextField(
                      //obscureText: obscureText,
                       onChanged: (value) {
                        setState(() {
                          dpassword = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        // prefix: Icon(Icons.vpn_key, color: Colors.orange),
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
                    SizedBox(height: 40),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorHome()));
                      },
                      child: Text('LOGIN',
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorSignupScreen()));



                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?'),
                          SizedBox(width: 5),
                          Text(
                            'Sign Up!',
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
