import 'package:flutter/material.dart';
import 'credits.dart';

void main() => runApp(Me());

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ME',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Credits();
          },
        ),);
      },
        backgroundColor: Colors.blue,
        label: Text('CREDITS',style: TextStyle(
          fontSize: 11,
          color: Colors.white,
        ),),
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage('assets/mansimar.jpg'),
            backgroundColor: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('Mansimar Singh',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('FLUTTER  DEVELOPER',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
            width: 175,
            child: Divider(
              color: Colors.grey.shade800,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.contact_mail,
                  color: Colors.black,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('My Contact Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.call,
                color: Colors.black,
                size: 20,
              ),
              title: Center(
                child: Text('+91 9958009454',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.mail_outline,
                color: Colors.black,
                size: 20,
              ),
              title: Text('Mansimarsingh94@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.5,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
