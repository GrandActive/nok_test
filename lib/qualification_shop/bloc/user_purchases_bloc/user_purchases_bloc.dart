import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/qualification_shop/data/qualification_shop_repository.dart';

part 'user_purchases_bloc.freezed.dart';
part 'user_purchases_event.dart';
part 'user_purchases_state.dart';

@injectable
class UserPurchasesBloc extends Bloc<UserPurchasesEvent, UserPurchasesState> {
  UserPurchasesBloc(this._repository) : super(const UserPurchasesState.initial()) {
    on<UserPurchasesEvent>((event, emit) async {
      await event.when(
        requested: (userId) async {
          emit(UserPurchasesState.loading());
          if (userId == null) {
            emit(UserPurchasesState.success(qualificationIds: []));
            return;
          }
          try {
            final qualificationIds = await _repository.getUserPurchasedQualificationIds(userId);
            emit(UserPurchasesState.success(qualificationIds: qualificationIds));
          } catch (e) {
            UserPurchasesState.failure(message: e.toString());
          }
        },
      );
    });
  }

  final QualificationShopRepository _repository;
}
