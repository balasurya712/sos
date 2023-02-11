import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class phonenum extends StatefulWidget {
  const phonenum({Key? key}) : super(key: key);

  @override
  State<phonenum> createState() => _phonenumState();
}

class _phonenumState extends State<phonenum> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff55418e),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                    child: Image.asset(
                  'assets/logo.png',
                  height: 26,
                  width: 56,
                )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: Text('SOS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Mullish',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.26,
                        ))),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0),
          ),
          Container(
              child: Image.asset(
            'assets/tt.png',
            height: 116,
            width: 116,
          )),
          Padding(
            padding: const EdgeInsets.only(
                top: 60.0, left: 40.0, right: 40.0, bottom: 60.0),
            child: Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 133, 128, 157),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("You,ll recieve a 5 digit code to verify",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'mullish')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        maxLength: 10,
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            fillColor: Color.fromARGB(255, 166, 166, 167),
                            hintText: 'Phone Number',
                            labelStyle: TextStyle(
                              fontFamily: 'Mullish',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 20)),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otpverify');
                      },
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("SUBMIT"),
                      textColor: Colors.white,
                    )
                  ],
                )),
          )
        ]));
  }
}
