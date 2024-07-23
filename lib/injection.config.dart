// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart' as _i9;
import 'package:nok_test/auth/bloc/log_in_bloc/log_in_bloc.dart' as _i10;
import 'package:nok_test/auth/bloc/password_restoration_bloc/password_restoration_bloc.dart'
    as _i11;
import 'package:nok_test/auth/bloc/registration_bloc/registration_bloc.dart'
    as _i12;
import 'package:nok_test/auth/data/auth_repository.dart' as _i3;
import 'package:nok_test/injection_module.dart' as _i27;
import 'package:nok_test/payments/api/payments_api.dart' as _i5;
import 'package:nok_test/payments/data/i_payments_repository.dart' as _i21;
import 'package:nok_test/payments/data/payments_repository.dart' as _i22;
import 'package:nok_test/payments/payment_data_bloc/payment_data_bloc.dart'
    as _i26;
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart'
    as _i25;
import 'package:nok_test/premium/bloc/premium_bloc.dart' as _i18;
import 'package:nok_test/premium/data/premium_firebase_data_source.dart' as _i6;
import 'package:nok_test/premium/data/premium_repository.dart' as _i14;
import 'package:nok_test/questions/matching_question/matching_question_bloc/matching_question_bloc.dart'
    as _i17;
import 'package:nok_test/questions/selection_question/selection_question_bloc/selection_question_bloc.dart'
    as _i13;
import 'package:nok_test/questions/sequence_question/sequence_question_bloc/sequence_question_bloc.dart'
    as _i15;
import 'package:nok_test/questions/user_input_question/user_input_question_bloc/user_input_question_bloc.dart'
    as _i20;
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart' as _i24;
import 'package:nok_test/testing/data/firebase_data_source.dart' as _i7;
import 'package:nok_test/testing/data/model/possible_answer.dart' as _i16;
import 'package:nok_test/testing/data/questions_repository.dart' as _i19;
import 'package:nok_test/testing/domain/get_random_questions_for_test.dart'
    as _i23;
import 'package:nok_test/testing/domain/ticker.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository());
    gh.factory<_i4.Dio>(() => injectionModule.dio);
    gh.factory<_i5.PaymentsApi>(() => injectionModule.paymentsApi);
    gh.factory<_i6.PremiumFirebaseDataSource>(
        () => _i6.PremiumFirebaseDataSource());
    gh.factory<_i7.FirebaseDataSource>(() => _i7.FirebaseDataSource());
    gh.factory<_i8.Ticker>(() => const _i8.Ticker());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i3.AuthRepository>()));
    gh.factory<_i10.LogInBloc>(() => _i10.LogInBloc(gh<_i3.AuthRepository>()));
    gh.factory<_i11.PasswordRestorationBloc>(
        () => _i11.PasswordRestorationBloc(gh<_i3.AuthRepository>()));
    gh.factory<_i12.RegistrationBloc>(
        () => _i12.RegistrationBloc(gh<_i3.AuthRepository>()));
    gh.factoryParam<_i13.SelectionQuestionBloc, Set<int>, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i13.SelectionQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i14.PremiumRepository>(() => _i14.PremiumRepository(
          gh<_i3.AuthRepository>(),
          gh<_i6.PremiumFirebaseDataSource>(),
        ));
    gh.factoryParam<_i15.SequenceQuestionBloc, List<_i16.PossibleAnswer>,
        List<_i16.PossibleAnswer>>((
      defaultAnswer,
      correctAnswer,
    ) =>
        _i15.SequenceQuestionBloc(
          defaultAnswer: defaultAnswer,
          correctAnswer: correctAnswer,
        ));
    gh.factoryParam<_i17.MatchingQuestionBloc, Map<int, int?>, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i17.MatchingQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i18.PremiumBloc>(
        () => _i18.PremiumBloc(gh<_i14.PremiumRepository>()));
    gh.factory<_i19.QuestionsRepository>(
        () => _i19.QuestionsRepository(gh<_i7.FirebaseDataSource>()));
    gh.factoryParam<_i20.UserInputQuestionBloc, String?, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i20.UserInputQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i21.IPaymentsRepository>(() => _i22.PaymentsRepository(
          gh<_i5.PaymentsApi>(),
          gh<_i3.AuthRepository>(),
        ));
    gh.factory<_i23.GetRandomQuestionsForTest>(() =>
        _i23.GetRandomQuestionsForTest(
            repository: gh<_i19.QuestionsRepository>()));
    gh.factory<_i24.TestingBloc>(
        () => _i24.TestingBloc(gh<_i23.GetRandomQuestionsForTest>()));
    gh.factory<_i25.PaymentStatusBloc>(
        () => _i25.PaymentStatusBloc(gh<_i21.IPaymentsRepository>()));
    gh.factory<_i26.PaymentDataBloc>(
        () => _i26.PaymentDataBloc(gh<_i21.IPaymentsRepository>()));
    return this;
  }
}

class _$InjectionModule extends _i27.InjectionModule {}
