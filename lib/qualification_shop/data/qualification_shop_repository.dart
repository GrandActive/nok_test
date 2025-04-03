import 'package:injectable/injectable.dart';
import 'package:nok_test/qualification_shop/data/qualification_shop_firebase_data_source.dart';
import 'package:nok_test/specializations/models/qualification.dart';

@injectable
class QualificationShopRepository {
  QualificationShopRepository(this._dataSource);

  final QualificationShopFirebaseDataSource _dataSource;

  Future<bool> isQualificationPurchased(String userId, Qualification qualification) =>
      _dataSource.isQualificationPurchased(userId, qualification.id);

  Future<List<String>> getUserPurchasedQualificationIds(String userId) =>
      _dataSource.getUserPurchasedQualificationIds(userId);
}
