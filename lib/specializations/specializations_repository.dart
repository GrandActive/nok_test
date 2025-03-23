import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/specializations/specializations_firebase_data_source.dart';

@injectable
class SpecializationsRepository {
  SpecializationsRepository(this._dataSource);

  final SpecializationsFirebaseDataSource _dataSource;

  Future<List<Specialization>> getAllSpecializations() => _dataSource.getAllSpecializations();
}
