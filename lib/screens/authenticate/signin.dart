import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            Padding(padding: EdgeInsets.only(top: 70)),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(children: [
                  Container(
                      child: Text('Sign Up',
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
            Padding(
                padding: EdgeInsets.only(
              bottom: 20,
            )),
            SingleChildScrollView(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.people),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Username',
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
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'PhoneNumber',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 30)),
                      Container(
                        width: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/otpverify');
                          },
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("SUBMIT"),
                          textColor: Colors.white,
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 40)),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.greenAccent,
                            activeColor: Colors.red,
                            value: this.valuefirst,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuefirst = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: RichText(
                                text: TextSpan(
                                    text: '"By signing up you accept the ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: 'Terms of services ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      )),
                                  TextSpan(
                                      text: 'and our      ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      )),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  )
                                ])),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                        bottom: 30,
                      )),
                      Row(
                        children: [
                          Text(
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Mullish',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              "Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/otp');
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
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
