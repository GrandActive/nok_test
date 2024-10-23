import 'package:firebase_core/firebase_core.dart';
import 'package:nok_test/firebase_options/firebase_options_dev.dart' as firebase_dev;
import 'package:nok_test/firebase_options/firebase_options_prod.dart' as firebase_prod;

initFirebase() async {
  const currentPlatform = bool.fromEnvironment('firebase.dev');
  final options = currentPlatform
      ? firebase_dev.DefaultFirebaseOptions.currentPlatform
      : firebase_prod.DefaultFirebaseOptions.currentPlatform;

  await Firebase.initializeApp(options: options);
}
