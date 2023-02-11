import 'dart:async';

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerificationScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff55418e),
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 30),
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
              Padding(padding: EdgeInsets.only(bottom: 50)),
              Container(
                  child: Image.asset(
                'assets/authentication.png',
                height: 216,
                width: 216,
              )),
              Padding(padding: const EdgeInsets.only(top: 20)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'VERIFICATION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 10, 117, 204),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Please enter the 6 digit OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20),
                            child: PinCodeTextField(
                              appContext: context,
                              pastedTextStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.blue,
                              ),
                              length: 6,
                              obscureText: true,
                              obscuringCharacter: '*',
                              obscuringWidget: Text('*'),
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,

                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                activeColor: Colors.black,
                                inactiveColor: Colors.white,
                                fieldHeight: 50,
                                fieldWidth: 40,
                              ),
                              cursorColor: Colors.black,
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              enableActiveFill: false,
                              errorAnimationController: errorController,
                              controller: textEditingController,
                              keyboardType: TextInputType.number,
                              boxShadows: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                debugPrint("Completed");
                              },
                              // onTap: () {
                              //   print("Pressed");
                              // },
                              onChanged: (value) {
                                debugPrint(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                debugPrint("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          hasError ? "Invalid OTP" : "",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 30),
                        child: ButtonTheme(
                          height: 50,
                          buttonColor: Colors.black,
                          child: TextButton(
                            onPressed: () {
                              formKey.currentState!.validate();
                              // conditions for validating
                              if (currentText.length != 6 ||
                                  currentText != "123456") {
                                errorController!.add(ErrorAnimationType
                                    .shake); // Triggering error shake animation
                                setState(() => hasError = true);
                              } else {
                                setState(
                                  () {
                                    hasError = false;
                                    snackBar("OTP Verified!!");
                                    Navigator.pushNamed(context, '/confirmpin');
                                  },
                                );
                              }
                            },
                            child: Center(
                              child: Text(
                                "VERIFY OTP".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.white,
                          //       offset: const Offset(1, -2),
                          //       blurRadius: 1),
                          //   BoxShadow(
                          //     color: Colors.white,
                          //     offset: const Offset(-1, 2),
                          //     blurRadius: 0.1,
                          //   )
                          // ]
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Didn't receive the code? ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () =>
                                snackBar("OTP resent to your Phone Number "),
                            child: const Text(
                              "RESEND",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
