import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nok_test/common/firebase_data_source.dart';

@injectable
class QualificationShopFirebaseDataSource extends FirebaseDataSource {
  Stream<List<String>> getUserPurchasedQualificationIds(String userId) =>
      database.ref('userPurchases/$userId').onValue.map(
        (event) {
          final Map<String, dynamic>? userPurchases = jsonDecode(jsonEncode(event.snapshot.value));
          if (userPurchases == null) return List.empty();
          return userPurchases.keys.toList();
        },
      );
}
