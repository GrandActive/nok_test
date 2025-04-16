import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/exceptions/log_in_exception.dart' as log_in_exception;
import 'package:nok_test/auth/data/exceptions/password_restoration_exception.dart'
    as password_restoration_exception;
import 'package:nok_test/auth/data/exceptions/registration_exception.dart'
    as registration_exception;

@injectable
class AuthRepository {
  final _firebase = FirebaseAuth.instance;

  Stream<User?> get authStream => _firebase.authStateChanges();

  User? getCurrentUser() {
    return _firebase.currentUser;
  }

  Future<String?> getUserToken() async {
    return await _firebase.currentUser?.getIdToken(true);
  }

  Future<void> logIn(String email, String password) async {
    try {
      await _firebase.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw log_in_exception.WrongEmailException();
        case 'invalid-credential':
          throw log_in_exception.WrongPasswordException();
        case 'too-many-requests':
          throw log_in_exception.TooManyRequestsException();
        default:
          throw log_in_exception.UnknownException();
      }
    } catch (e) {
      // Do nothing instead of rethrowing some exception
      // because of unhandled exception inside firebase auth plugin.
      // https://github.com/firebase/flutterfire/issues/13077
      // Upgrading firebase_auth is not an option
      // because it needs minSdk 23, but it must be <=21.
    }
  }

  Stream<User?> getAuthStateStream() {
    return _firebase.authStateChanges();
  }

  Future<void> logOut() async {
    if (_firebase.currentUser != null) {
      await _firebase.signOut();
    }
  }

  Future<void> registerNewUser(String email, String password) async {
    try {
      await _firebase.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          throw registration_exception.EmailAlreadyInUseException();
        case 'invalid-email':
          throw registration_exception.InvalidEmailException();
        case 'weak-password':
          throw registration_exception.WeakPasswordException();
        default:
          rethrow;
      }
    } catch (e) {
      // Do nothing instead of rethrowing some exception
      // because of unhandled exception inside firebase auth plugin.
      // https://github.com/firebase/flutterfire/issues/13077
      // Upgrading firebase_auth is not an option
      // because it needs minSdk 23, but it must be <=21.
    }
  }

  Future<void> resetPasswordViaEmail(String email) async {
    try {
      await _firebase.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw password_restoration_exception.InvalidEmailException();
        default:
          rethrow;
      }
    } catch (e) {
      throw password_restoration_exception.UnknownException();
    }
  }
}
