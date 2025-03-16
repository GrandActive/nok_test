import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/specializations/models/qualification.dart';

part 'specialization.freezed.dart';

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    required String id,
    required String name,
    required List<Qualification> qualifications,
  }) = _Specialization;
}
