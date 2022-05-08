import 'package:flutter/material.dart';

void main() => runApp(const FinalApp());

class FinalApp extends StatelessWidget {
  const FinalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal.shade300,
          title: const Text('Business Card'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('images/me.png'),
              ),
              const Text(
                'Ajewole Bamidele',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mobile App Developer',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+234 8102 666 712',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ListTile(
                    leading: const Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'bamideledavid.ajewole@gmail.com',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
