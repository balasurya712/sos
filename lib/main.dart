import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/models/user.dart';
import 'package:sos/screens/authenticate/auth.dart';
import 'package:sos/screens/home/PinCodeVerificationScreen.dart.dart';
import 'package:sos/screens/home/addcontact.dart';
import 'package:sos/screens/home/addmsg.dart';
import 'package:sos/screens/home/alert.dart';
import 'package:sos/screens/home/confirmpin.dart';
import 'package:sos/screens/home/deletecontact.dart';
import 'package:sos/screens/home/home.dart';
import 'package:sos/screens/home/instruc.dart';
import 'package:sos/screens/home/phonenum.dart';
import 'package:sos/screens/home/viewcontact.dart';
import 'package:sos/screens/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sos/service/authenticate.dart';
import 'screens/authenticate/signIn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserId>.value(
      value: Authenticate().user,
      initialData:
          UserId(uid: Authenticate().user.map((event) => event.uid).toString()),
      child: MaterialApp(
        title: 'SOS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => Auth(),
          '/home': (context) => Home(),
          '/otp': (context) => phonenum(),
          '/otpverify': (context) => PinCodeVerificationScreen(),
          '/confirmpin': (context) => confirmPin(),
          '/alert': (context) => Alert(),
          '/addcontact': (context) => addcontacts(),
          '/editcontact': (context) => viewcontact(),
          '/viewmessage': (context) => addmsg(),
          '/instruc': (context) => instruc(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
