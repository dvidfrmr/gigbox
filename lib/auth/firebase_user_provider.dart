import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GigBoxFirebaseUser {
  GigBoxFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GigBoxFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GigBoxFirebaseUser> gigBoxFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GigBoxFirebaseUser>((user) => currentUser = GigBoxFirebaseUser(user));
