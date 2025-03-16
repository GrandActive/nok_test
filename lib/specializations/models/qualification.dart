import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';

@freezed
class Qualification with _$Qualification {
  const factory Qualification({
    required String id,
    required String name,
  }) = _Qualification;
}
