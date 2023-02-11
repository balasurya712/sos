import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class deletecontact extends StatefulWidget {
  @override
  State<deletecontact> createState() => _deletecontactState();
}

class _deletecontactState extends State<deletecontact> {
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
                    Text('Delete Contact',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                        )),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          suffixIcon: Icon(Icons.delete_forever),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'Enter Name '),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                      top: 30.0,
                    )),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          suffixIcon: Icon(Icons.delete_forever),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Enter Contact Number'),
                    ),
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Container(
                        width: 110.0,
                        height: 50.0,
                        child: RaisedButton(
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () {
                              print('You pressed the button.');
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            )))
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
