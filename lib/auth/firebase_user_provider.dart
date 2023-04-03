import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EssileFirebaseUser {
  EssileFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EssileFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EssileFirebaseUser> essileFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EssileFirebaseUser>(
      (user) {
        currentUser = EssileFirebaseUser(user);
        return currentUser!;
      },
    );
