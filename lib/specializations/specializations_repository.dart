import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/testing/data/firebase_data_source.dart';

@injectable
class SpecializationsRepository {
  SpecializationsRepository(this._dataSource);

  final FirebaseDataSource _dataSource;

  Future<List<Specialization>> getAllSpecializations() => _dataSource.getAllSpecializations();
}
