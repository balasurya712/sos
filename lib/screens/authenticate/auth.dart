import 'package:flutter/material.dart';
import 'package:sos/screens/authenticate/signIn.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
