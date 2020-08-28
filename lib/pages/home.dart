import 'package:flutter/material.dart';
import 'package:medline/pages/doctor_profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctors')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Doctor\'s Name'),
            leading: CircleAvatar(),
            subtitle: Text('Specialization'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Doctor()));
            },
          ),
          ListTile(
            title: Text('Doctor\'s Name'),
            leading: CircleAvatar(),
            subtitle: Text('Specialization'),
          ),
          ListTile(
            title: Text('Doctor\'s Name'),
            leading: CircleAvatar(),
            subtitle: Text('Specialization'),
          ),
          ListTile(
            title: Text('Doctor\'s Name'),
            leading: CircleAvatar(),
            subtitle: Text('Specialization'),
          ),
        ],
      ),
    );
  }
}
