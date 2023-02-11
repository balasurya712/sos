import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 40.0)),
          Card(
            child: ListTile(
              title: Text(
                'Raagavendiran',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    // color: Colors.black87,
                    fontFamily: 'Asap'),
              ),
              subtitle: Text('Welcomeback',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      // color: Colors.black87,
                      fontFamily: 'Asap')),
              leading: Image.asset('assets/Profile.png'),
            ),
          ),
          // Expanded(
          // child:
          Center(
            child: Container(
              child: Image.asset(
                'assets/HomeCard.png',
                height: 230,
                width: 325,
              ),
            ),
          ),
          // flex: 8,
          // ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 200,
            width: 500,
            child: Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addcontact');
                            },
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 40, 4, 0),
                                    child: Text(
                                      'Add Contact',
                                      style: TextStyle(
                                        color: Color(0xff55418e),
                                        fontSize: 18,
                                        fontFamily: "Mulish",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 50,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20)),
                              ],
                            ),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/editcontact');
                            },
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 40, 4, 0),
                                    child: Text(
                                      'Edit Contacts',
                                      style: TextStyle(
                                        color: Color(0xff55418e),
                                        fontSize: 18,
                                        fontFamily: "Mulish",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.cancel,
                                  size: 50,
                                )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Container(
            height: 200,
            width: 500,
            child: Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/viewmessage');
                            },
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 40, 4, 0),
                                    child: Text(
                                      'View Message',
                                      style: TextStyle(
                                        color: Color(0xff55418e),
                                        fontSize: 18,
                                        fontFamily: "Mulish",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 50,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20)),
                              ],
                            ),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 40, 4, 0),
                                    child: Text(
                                      'View Instruction',
                                      style: TextStyle(
                                        color: Color(0xff55418e),
                                        fontSize: 18,
                                        fontFamily: "Mulish",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.account_circle,
                                  size: 50,
                                )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
