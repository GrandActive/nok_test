import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';

part 'qualification_premium_status_bloc.freezed.dart';
part 'qualification_premium_status_event.dart';
part 'qualification_premium_status_state.dart';

@injectable
class QualificationPremiumStatusBloc
    extends Bloc<QualificationPremiumStatusEvent, QualificationPremiumStatusState> {
  QualificationPremiumStatusBloc() : super(const QualificationPremiumStatusState()) {
    on<QualificationPremiumStatusEvent>(
      (event, emit) {
        event.when(
          userPurchasesUpdated: (qualificationIds) {
            emit(state.copyWith(userPurchases: qualificationIds));
          },
          qualificationSelected: (qualification) {
            emit(state.copyWith(qualification: qualification));
          },
        );
      },
    );
  }
}
