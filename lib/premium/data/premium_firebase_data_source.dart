import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class PremiumFirebaseDataSource {
  final _database = FirebaseDatabase.instance;

  Future<bool> isPremiumEnabled(String userId) async {
    final dateEvent = await _database.ref('premiumUsers/$userId').once();
    final isEnabled = dateEvent.snapshot.exists;
    return isEnabled;
  }
}
