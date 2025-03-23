import 'package:firebase_database/firebase_database.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class FirebaseDataSource {
  FirebaseDatabase get database => FirebaseDatabase.instance;

  Future<void> checkVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;
    final appVersionParts = appVersion.split(".");
    final appMajorVersion = appVersionParts[0];
    final appMinorVersion = appVersionParts[1];

    final dbVersionEvent = await database.ref("version").once();
    final dbVersion = dbVersionEvent.snapshot.value as String;
    final dbVersionParts = dbVersion.split(".");
    final dbMajorVersion = dbVersionParts[0];
    final dbMinorVersion = dbVersionParts[1];

    if (dbMajorVersion != appMajorVersion || dbMinorVersion != appMinorVersion) {
      throw WrongDbVersionException();
    }
  }
}

class WrongDbVersionException implements Exception {}
