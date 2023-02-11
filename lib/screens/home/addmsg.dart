import 'package:flutter/material.dart';

class addmsg extends StatefulWidget {
  const addmsg({Key? key}) : super(key: key);

  @override
  State<addmsg> createState() => _addmsgState();
}

class _addmsgState extends State<addmsg> {
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
          Padding(padding: const EdgeInsets.only(top: 110)),
          Expanded(
            child: Column(children: [
              Text(
                'Add Message',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mullish',
                    fontSize: 26,
                    color: Colors.white),
              ),
              Padding(padding: const EdgeInsets.only(top: 10)),
              Icon(
                Icons.message_rounded,
                size: 50,
              ),
              Padding(padding: const EdgeInsets.only(top: 10)),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  controller: TextEditingController(
                      text: "Emergency!! PLEASE HELP ME."),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  maxLength: 200,
                  maxLines: 10,
                  decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      fillColor: Colors.white,
                      hintText: 'Enter your Message',
                      labelStyle: TextStyle(
                        fontFamily: 'Mullish',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 5)),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'LIMIT',
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 200',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' WORDS',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 20)),
              RaisedButton(
                onPressed: () {},
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("SAVE"),
                textColor: Colors.white,
              )
            ]),
          ),
        ]));
  }
}
