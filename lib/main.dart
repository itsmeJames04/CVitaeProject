import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'forgetpass.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginRoute(),
      '/signin': (context) => SigninRoute(),
      '/forget': (context) => const ForgetRoute(),
      '/': (context) => const HomeRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[900],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.cyan[200],
                    backgroundImage: AssetImage('images/james.jpg'),
                  ),
                  SizedBox(height: 50.0),
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.yellow,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Text(
                    'TAMAYO, JAMES CARL B.',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Course:',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.yellow,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Text(
                    'Information Technology',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Divider(
                      color: Colors.black,
                    ),
                  SizedBox(height: 15.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Email:',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.yellow,
                            fontSize: 15.0,
                            letterSpacing: 2.5,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'tamayojames07@gmail.com',
                          style: TextStyle(
                            fontFamily: 'Times New Roman',
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Number:',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.yellow,
                            fontSize: 15.0,
                            letterSpacing: 2.5,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '09152770832',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 180.0),
                      ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Icon(Icons.school),
                        onPressed: () {
                          Navigator.pushNamed(context, '/first');
                        },
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Icon(Icons.person),
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Icon(Icons.quiz_sharp),
                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                        },
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Icon(Icons.logout),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(), // AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Educational Background',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Divider(
                        color: Colors.black,
                      ),
                    Text(
                      'Tertiary Education:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.yellow,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Philippine College of Science Technoogy',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '- Bachelor of Science in Information Technology',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- Year 2019 - 2023',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'Secondary Education:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.yellow,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Burgos National High School',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- Senior High 2016 - 2018',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- Junior High 2012 - 2016',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'Primary Education:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.yellow,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Tambacan Elementary School',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- Year 2006 - 2012',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(), // AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'James Carl B. Tamayo',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Age:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        '21 Years Old',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Sex:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Address:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Don Matias, Burgos, Pangasinan',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Birth Date:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'June 18, 2001',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Place of Birth:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Quezon City',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Citizenship:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Filipino',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Civil Status:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Single',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Religion:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.yellow,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Muslim',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
