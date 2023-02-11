import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class viewcontact extends StatefulWidget {
  @override
  State<viewcontact> createState() => _viewcontactState();
}

class _viewcontactState extends State<viewcontact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff55418e),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.only(top: 40.0)),
          Expanded(
            flex: 1,
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
          Padding(padding: const EdgeInsets.only(bottom: 40)),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Text('Edit Contacts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                        )),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            height: 100,
                            width: 250,
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                Wrap(
                                  children: [
                                    Text(
                                      "Andrea 8540483292",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Mullish'),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.delete_forever, size: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
