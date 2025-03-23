import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/specializations/specializations_repository.dart';

part 'qualification_premium_status_bloc.freezed.dart';
part 'qualification_premium_status_event.dart';
part 'qualification_premium_status_state.dart';

@injectable
class QualificationPremiumStatusBloc
    extends Bloc<QualificationPremiumStatusEvent, QualificationPremiumStatusState> {
  QualificationPremiumStatusBloc(this._repository)
      : super(const QualificationPremiumStatusState.initial()) {
    on<QualificationPremiumStatusEvent>((event, emit) async {
      await event.when(
        requested: (qualification) async {
          emit(QualificationPremiumStatusState.loading(qualification: qualification));
          try {
            final isPurchased = await _repository.isQualificationPurchased(qualification.id);
            emit(QualificationPremiumStatusState.success(
              qualification: qualification,
              isPurchased: isPurchased,
            ));
          } catch (e) {
            emit(QualificationPremiumStatusState.failure(
              qualification: qualification,
              message: e.toString(),
            ));
          }
        },
      );
    });
  }

  final SpecializationsRepository _repository;
}
