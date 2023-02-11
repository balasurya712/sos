import 'package:flutter/material.dart';
import 'package:sos/service/authenticate.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  final Authenticate _auth = Authenticate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/logo.png',
                  width: 46,
                  height: 26,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  'SOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.26,
                  ),
                ),
                color: Color.fromARGB(12, 67, 98, 98),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            child: Center(
              child: Text(
                "Your saftey in \none app",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.26,
                ),
              ),
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Center(
            child: IconButton(
              icon: Image.asset('assets/LogoText.png'),
              iconSize: 250,
              onPressed: () {},
            ),
          ),
          flex: 8,
        ),
        Expanded(
          child: Center(
            child: Text(
              "Our Goal Is To Keep You Safe ,\n Everywhere",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Mulish",
                fontWeight: FontWeight.w600,
                letterSpacing: 0.36,
              ),
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(Icons.login_outlined),
                  color: Colors.white,
                  // color: Color(0xffffa500),
                  tooltip: 'Click here to Edit options',
                  iconSize: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffffa500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          flex: 2,
        )
      ], crossAxisAlignment: CrossAxisAlignment.start),
      backgroundColor: Color(0xff55418e),
    );
  }
}
