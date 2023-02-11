import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class instruc extends StatefulWidget {
  const instruc({Key? key}) : super(key: key);

  @override
  State<instruc> createState() => _instrucState();
}

class _instrucState extends State<instruc> {
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
            padding: const EdgeInsets.all(40.0),
          ),
          Text(
            'INSTRUCTIONS',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Mullish',
                fontSize: 30,
                color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 1.0, right: 40, left: 40, bottom: 140),
            child: Expanded(
              child: Wrap(
                children: [
                  Text(
                    '1. Register your emergency contact numbers  under MENU REGISTER NUMBER',
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mullish',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  Text(
                    '2. Press the SOS Widget or the SOS Button on the homepage in case of an EMERGENCY. On pressing the button, an SOS message along with the link of your CURRENT LOCATION on google maps will be sent as an SMS to the registered numbers',
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mullish',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  Text(
                    '3. We recommend you to always keep your GPS turned ON so that your device has enough information about your location in case of an emergency which in turn enables the app to fetch your location very quickly otherwise it may take few more seconds (not more than 10 sec)',
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mullish',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
