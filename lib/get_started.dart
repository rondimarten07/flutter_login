import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              height: MediaQuery.of(context).size.height / 3.3,
              decoration: BoxDecoration(
                color: Colors.white10,
                image: DecorationImage(
                  image: AssetImage('images/ilustrasi_started.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "WELCOME TO TAMPILAN LOGIN RONDI",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF53714B),
                  fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Setelah tampilan started ini di klik, maka akan muncul tampilan login, enjoyy!!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 150.0,
                    minHeight: 40.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
