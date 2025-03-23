import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/specializations/specializations_firebase_data_source.dart';

@injectable
class SpecializationsRepository {
  SpecializationsRepository(
    this._authRepository,
    this._dataSource,
  );

  final AuthRepository _authRepository;
  final SpecializationsFirebaseDataSource _dataSource;

  Future<List<Specialization>> getAllSpecializations() => _dataSource.getAllSpecializations();

  Future<bool> isQualificationPurchased(String qualificationId) async {
    final user = _authRepository.getCurrentUser();
    if (user == null) return false;
    final firebaseResponse = _dataSource.isQualificationPurchased(user.uid, qualificationId);
    return firebaseResponse;
  }
}
