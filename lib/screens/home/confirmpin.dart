import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class confirmPin extends StatefulWidget {
  const confirmPin({Key? key}) : super(key: key);

  @override
  State<confirmPin> createState() => _confirmPinState();
}

class _confirmPinState extends State<confirmPin> {
  bool valuefirst = false;
  bool _isObscure = true;
  bool _isObscures = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff55418e),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
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
            Padding(padding: EdgeInsets.only(top: 150)),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(children: [
                  Container(
                      child: Text('Confirm Pin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.26,
                          ))),
                ]),
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      TextField(
                        maxLength: 4,
                        obscureText: _isObscure,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Pin',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      TextField(
                        maxLength: 4,
                        obscureText: _isObscures,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscures
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/tohome');
                              setState(() {
                                _isObscures = !_isObscures;
                              });
                            },
                          ),
                          fillColor: Colors.white,
                          hintText: 'Confirm Pin',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 40)),
                      Container(
                        width: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/alert');
                          },
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("SUBMIT"),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
