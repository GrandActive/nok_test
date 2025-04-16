import 'package:bloc_concurrency/bloc_concurrency.dart';
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
    on<UserPurchasesEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(UserPurchasesState.loading());
            try {
              await emit.forEach(
                _repository.userPurchasedQualificationIds,
                onData: (data) => UserPurchasesState.success(qualificationIds: data),
              );
            } catch (e) {
              emit(UserPurchasesState.failure(message: e.toString()));
            }
          },
        );
      },
      transformer: droppable(),
    );
  }

  final QualificationShopRepository _repository;
}
