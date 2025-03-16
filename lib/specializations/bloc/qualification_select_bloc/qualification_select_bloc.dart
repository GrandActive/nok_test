import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';

part 'qualification_select_bloc.freezed.dart';
part 'qualification_select_event.dart';
part 'qualification_select_state.dart';

@injectable
class QualificationSelectBloc extends Bloc<QualificationSelectEvent, QualificationSelectState> {
  QualificationSelectBloc() : super(const QualificationSelectState.initial()) {
    on<QualificationSelectEvent>((event, emit) {
      event.when(
        initialized: (qualifications) {
          if (qualifications.length == 1) {
            emit(QualificationSelectState.active(
              allQualifications: qualifications,
              selectedIndex: 0,
            ));
          } else {
            emit(QualificationSelectState.active(allQualifications: qualifications));
          }
        },
        selected: (index) {
          state.whenOrNull(
            active: (allQualifications, _) {
              emit(QualificationSelectState.active(
                allQualifications: allQualifications,
                selectedIndex: index,
              ));
            },
          );
        },
      );
    });
  }
}
