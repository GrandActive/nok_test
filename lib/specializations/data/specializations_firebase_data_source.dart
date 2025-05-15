import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nok_test/common/firebase_data_source.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/specializations/models/specialization.dart';

@injectable
class SpecializationsFirebaseDataSource extends FirebaseDataSource {
  Future<List<Specialization>> getAllSpecializations() async {
    await checkVersion();

    final dataEvent = await database.ref().once();
    final Map data = jsonDecode(jsonEncode(dataEvent.snapshot.value));

    final Map specializations = data["specializations"];
    final Map qualifications = data["qualifications"];

    final deserializedSpecializations = specializations.entries
        .map(
          (s) => Specialization(
              id: s.key,
              name: s.value['name'],
              qualifications: (s.value['qualifications'] as Map).entries.map((q) {
                final id = q.key;
                final qualification = qualifications[id];
                return Qualification(
                  id: id,
                  name: qualification['shortName'],
                  cost: qualification['cost'],
                  testQuestionCount: qualification['testQuestionCount'],
                  correctAnswerCount: qualification['correctAnswerCount'],
                );
              }).toList()),
        )
        .toList();

    return deserializedSpecializations;
  }
}
