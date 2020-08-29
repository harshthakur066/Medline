import 'package:flutter/material.dart';
import 'package:medline/pages/doctor_profile.dart';
import 'package:medline/pages/landing.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors', style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        //leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.account_circle, size: 60),
                  SizedBox(width: 10),
                  Text('Patient\'s name', style: TextStyle(fontSize: 18)),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF08ffbd),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.description),
                      SizedBox(width: 10),
                      Text('App Description', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              onTap: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 10),
                      Text('Logout', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xfff5f5f5),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              // ListTile(
              //   title: Text('Rick'),
              //   leading: Container(
              //       width: 50.0,
              //       height: 50.0,
              //       decoration: new BoxDecoration(
              //           shape: BoxShape.circle,
              //           image: new DecorationImage(
              //             fit: BoxFit.fill,
              //             image: new AssetImage('asset/doctor.jpg'),
              //           ))),
              //   subtitle: Text('Covid'),
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => Doctor()));
              //   },
              // ),
              // ListTile(
              //   title: Text('Rick'),
              //   leading: CircleAvatar(),
              //   subtitle: Text('Covid'),
              // ),
              // ListTile(
              //   title: Text('Rick'),
              //   leading: CircleAvatar(),
              //   subtitle: Text('Covid'),
              // ),
              // ListTile(
              //   title: Text('Rick'),
              //   leading: CircleAvatar(),
              //   subtitle: Text('Covid'),
              // ),
              InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Doctor()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage('asset/doctor.jpg'),
                                ))),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Rick',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Covid',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),
                            SizedBox(height: 3),
                            Text('MBBS, MS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage('asset/doctor.jpg'),
                                ))),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Harsh Thakur',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('General Medicine',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),
                            SizedBox(height: 3),
                            Text('MBBS, MS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage('asset/doctor.jpg'),
                                ))),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Patrick',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Psychiatrist',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),
                            SizedBox(height: 3),
                            Text('MBBS, MS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage('asset/doctor.jpg'),
                                ))),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Margo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Mental Issues',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),
                            SizedBox(height: 3),
                            Text('MBBS, MS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage('asset/doctor.jpg'),
                                ))),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('James',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Covid',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),
                            SizedBox(height: 3),
                            Text('MBBS, MS',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
