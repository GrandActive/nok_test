import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nok_test/common/firebase_data_source.dart';

@injectable
class QualificationShopFirebaseDataSource extends FirebaseDataSource {
  Future<bool> isQualificationPurchased(String userId, String qualificationId) async {
    final dataEvent = await database.ref('userPurchases/$userId').once();

    final userPurchases = dataEvent.snapshot.value as Map?;
    if (userPurchases == null) return false;

    return userPurchases.containsKey(qualificationId);
  }

  Future<List<String>> getUserPurchasedQualificationIds(String userId) async {
    final dataEvent = await database.ref('userPurchases/$userId').once();

    final Map<String, dynamic>? userPurchases = jsonDecode(jsonEncode(dataEvent.snapshot.value));
    if (userPurchases == null) return List.empty();

    return userPurchases.keys.toList();
  }
}
