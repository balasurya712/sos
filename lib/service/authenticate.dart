import 'package:firebase_auth/firebase_auth.dart';
import 'package:sos/models/user.dart';

class Authenticate {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//auth change user stream
  Stream<UserId> get user {
    return _auth.authStateChanges().map((event) => userFromFirebase(event!)!);
  }

//user object based on firebase user

  UserId? userFromFirebase(User user) {
    return user != null ? UserId(uid: user.uid) : null;
  }

// Anonomus signin method
  Future SignInAno() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
    }
  }
}
