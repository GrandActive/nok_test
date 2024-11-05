// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart' as _i627;
import 'package:nok_test/auth/bloc/log_in_bloc/log_in_bloc.dart' as _i65;
import 'package:nok_test/auth/bloc/password_restoration_bloc/password_restoration_bloc.dart'
    as _i1050;
import 'package:nok_test/auth/bloc/registration_bloc/registration_bloc.dart'
    as _i184;
import 'package:nok_test/auth/data/auth_repository.dart' as _i760;
import 'package:nok_test/injection_module.dart' as _i542;
import 'package:nok_test/payments/api/payments_api.dart' as _i888;
import 'package:nok_test/payments/data/i_payments_repository.dart' as _i737;
import 'package:nok_test/payments/data/payments_repository.dart' as _i441;
import 'package:nok_test/payments/payment_data_bloc/payment_data_bloc.dart'
    as _i757;
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart'
    as _i797;
import 'package:nok_test/premium/bloc/premium_bloc.dart' as _i280;
import 'package:nok_test/premium/data/premium_firebase_data_source.dart'
    as _i533;
import 'package:nok_test/premium/data/premium_repository.dart' as _i604;
import 'package:nok_test/questions/matching_question/matching_question_bloc/matching_question_bloc.dart'
    as _i265;
import 'package:nok_test/questions/selection_question/selection_question_bloc/selection_question_bloc.dart'
    as _i816;
import 'package:nok_test/questions/sequence_question/sequence_question_bloc/sequence_question_bloc.dart'
    as _i876;
import 'package:nok_test/questions/user_input_question/user_input_question_bloc/user_input_question_bloc.dart'
    as _i802;
import 'package:nok_test/questions_list/bloc/questions_list_bloc.dart' as _i884;
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart' as _i921;
import 'package:nok_test/testing/data/firebase_data_source.dart' as _i490;
import 'package:nok_test/testing/data/model/possible_answer.dart' as _i676;
import 'package:nok_test/testing/data/questions_repository.dart' as _i773;
import 'package:nok_test/testing/domain/get_random_questions_for_test.dart'
    as _i424;
import 'package:nok_test/testing/domain/ticker.dart' as _i580;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i760.AuthRepository>(() => _i760.AuthRepository());
    gh.factory<_i361.Dio>(() => injectionModule.dio);
    gh.factory<_i888.PaymentsApi>(() => injectionModule.paymentsApi);
    gh.factory<_i533.PremiumFirebaseDataSource>(
        () => _i533.PremiumFirebaseDataSource());
    gh.factory<_i490.FirebaseDataSource>(() => _i490.FirebaseDataSource());
    gh.factory<_i580.Ticker>(() => const _i580.Ticker());
    gh.factory<_i627.AuthBloc>(
        () => _i627.AuthBloc(gh<_i760.AuthRepository>()));
    gh.factory<_i65.LogInBloc>(
        () => _i65.LogInBloc(gh<_i760.AuthRepository>()));
    gh.factory<_i1050.PasswordRestorationBloc>(
        () => _i1050.PasswordRestorationBloc(gh<_i760.AuthRepository>()));
    gh.factory<_i184.RegistrationBloc>(
        () => _i184.RegistrationBloc(gh<_i760.AuthRepository>()));
    gh.factoryParam<_i816.SelectionQuestionBloc, Set<int>, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i816.SelectionQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i604.PremiumRepository>(() => _i604.PremiumRepository(
          gh<_i760.AuthRepository>(),
          gh<_i533.PremiumFirebaseDataSource>(),
        ));
    gh.factoryParam<_i876.SequenceQuestionBloc, List<_i676.PossibleAnswer>,
        List<_i676.PossibleAnswer>>((
      defaultAnswer,
      correctAnswer,
    ) =>
        _i876.SequenceQuestionBloc(
          defaultAnswer: defaultAnswer,
          correctAnswer: correctAnswer,
        ));
    gh.factoryParam<_i265.MatchingQuestionBloc, Map<int, int?>, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i265.MatchingQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i280.PremiumBloc>(
        () => _i280.PremiumBloc(gh<_i604.PremiumRepository>()));
    gh.factory<_i773.QuestionsRepository>(
        () => _i773.QuestionsRepository(gh<_i490.FirebaseDataSource>()));
    gh.factoryParam<_i802.UserInputQuestionBloc, String?, dynamic>((
      correctAnswer,
      _,
    ) =>
        _i802.UserInputQuestionBloc(correctAnswer: correctAnswer));
    gh.factory<_i737.IPaymentsRepository>(() => _i441.PaymentsRepository(
          gh<_i888.PaymentsApi>(),
          gh<_i760.AuthRepository>(),
        ));
    gh.factory<_i424.GetRandomQuestionsForTest>(() =>
        _i424.GetRandomQuestionsForTest(
            repository: gh<_i773.QuestionsRepository>()));
    gh.factory<_i921.TestingBloc>(
        () => _i921.TestingBloc(gh<_i424.GetRandomQuestionsForTest>()));
    gh.factory<_i884.QuestionsListBloc>(
        () => _i884.QuestionsListBloc(gh<_i773.QuestionsRepository>()));
    gh.factory<_i757.PaymentDataBloc>(
        () => _i757.PaymentDataBloc(gh<_i737.IPaymentsRepository>()));
    gh.factory<_i797.PaymentStatusBloc>(
        () => _i797.PaymentStatusBloc(gh<_i737.IPaymentsRepository>()));
    return this;
  }
}

class _$InjectionModule extends _i542.InjectionModule {}
