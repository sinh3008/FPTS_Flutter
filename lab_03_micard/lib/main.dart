import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFf2f2f2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar2.JPG'),
              ),
              Text(
                'Lê Xuân Sinh',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.black,
                    letterSpacing: 2.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '0973 432 518',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'sinhle.dev@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
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
