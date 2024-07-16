import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/premium/data/premium_firebase_data_source.dart';

@injectable
class PremiumRepository {
  PremiumRepository(this._authRepository, this._firebaseDataSource);

  final AuthRepository _authRepository;
  final PremiumFirebaseDataSource _firebaseDataSource;

  Future<bool> isPremiumEnabled() async {
    final user = _authRepository.getCurrentUser();
    if (user == null) return false;
    final firebaseResponse = _firebaseDataSource.isPremiumEnabled(user.uid);
    return firebaseResponse;
  }
}
