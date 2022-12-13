import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EdugateFirebaseUser {
  EdugateFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EdugateFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EdugateFirebaseUser> edugateFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EdugateFirebaseUser>(
      (user) {
        currentUser = EdugateFirebaseUser(user);
        return currentUser!;
      },
    );
