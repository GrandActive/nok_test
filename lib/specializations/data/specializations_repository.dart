import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/data/specializations_firebase_data_source.dart';
import 'package:nok_test/specializations/models/specialization.dart';

@injectable
class SpecializationsRepository {
  SpecializationsRepository(
    this._dataSource,
  );

  final SpecializationsFirebaseDataSource _dataSource;

  Future<List<Specialization>> getAllSpecializations() => _dataSource.getAllSpecializations();
}
