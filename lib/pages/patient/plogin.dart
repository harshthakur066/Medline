import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medline/pages/home.dart';
import 'package:medline/pages/patient/psignup.dart';

class PatientLoginScreen extends StatefulWidget {
  @override
  _PatientLoginScreenState createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email, password;
//  Future<void> plogin(email, password) async {
//    const url =
//        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBc4t_OuOyX8DMDi_EEhVq5_4PGhQuS1dM';
//    try {
//      await http.post(
//        url,
//        body: json.encode({
//          'email': email,
//          'password': password,
//          'returnSecureToken': true,
//        }),
//      );
//    } catch (err) {
//      print(err);
//    }
//  }

  var person = Icons.person;

  @override
  Widget build(BuildContext context) {
    final phoneHeight = MediaQuery.of(context).size.height;

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
                              email = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Username',
                            // prefix: Icon(Icons.person, color: Colors.orange),
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
                        SizedBox(height: 20),
                        TextField(
                          //obscureText: obscureText,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            // prefix: Icon(Icons.vpn_key, color: Colors.orange),
                            prefixIcon:
                                Icon(Icons.vpn_key, color: Color(0xFF08ffbd)),
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
                        SizedBox(height: 40),
                        MaterialButton(
                          onPressed: () async {
//                            plogin(pemail, ppassword);
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: password);
                              if (user != null) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage()));
                              }
                            } catch (e) {
                              print(e);
                            }
//                            Navigator.of(context).push(MaterialPageRoute(
//                                builder: (context) => ChatScreen()));
                          },
                          child: Text('LOGIN',
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
                        Text('or',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Color(0xFF08ffbd)),
                                top: BorderSide(color: Color(0xFF08ffbd)),
                                left: BorderSide(color: Color(0xFF08ffbd)),
                                right: BorderSide(color: Color(0xFF08ffbd)),
                              )),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('asset/ui.png', height: 20),
                                SizedBox(width: 15),
                                Text('LOGIN WITH GOOGLE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            minWidth: double.infinity,
                            color: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PatientSignupScreen()));
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
        ),
      ),
    );
  }
}
