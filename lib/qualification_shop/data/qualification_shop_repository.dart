import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/qualification_shop/data/qualification_shop_firebase_data_source.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:stream_transform/stream_transform.dart';

@injectable
class QualificationShopRepository {
  QualificationShopRepository(this._dataSource, this._authRepository);

  final QualificationShopFirebaseDataSource _dataSource;
  final AuthRepository _authRepository;

  Future<bool> isQualificationPurchased(String userId, Qualification qualification) =>
      _dataSource.isQualificationPurchased(userId, qualification.id);

  Stream<List<String>> get userPurchasedQualificationIds => _authRepository.authStream.switchMap(
        (user) => user == null
            ? Stream.value(List.empty())
            : _dataSource.getUserPurchasedQualificationIds(user.uid),
      );
}
