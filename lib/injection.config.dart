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
import 'package:nok_test/injection_module.dart' as _i22;
import 'package:nok_test/payments/api/payments_api.dart' as _i5;
import 'package:nok_test/payments/data/i_payments_repository.dart' as _i16;
import 'package:nok_test/payments/data/payments_repository.dart' as _i17;
import 'package:nok_test/payments/payment_data_bloc/payment_data_bloc.dart'
    as _i21;
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart'
    as _i20;
import 'package:nok_test/premium/bloc/premium_bloc.dart' as _i14;
import 'package:nok_test/premium/data/premium_firebase_data_source.dart' as _i6;
import 'package:nok_test/premium/data/premium_repository.dart' as _i13;
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart' as _i19;
import 'package:nok_test/testing/data/firebase_data_source.dart' as _i7;
import 'package:nok_test/testing/data/questions_repository.dart' as _i15;
import 'package:nok_test/testing/domain/get_random_questions_for_test.dart'
    as _i18;
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
    gh.factory<_i13.PremiumRepository>(() => _i13.PremiumRepository(
          gh<_i3.AuthRepository>(),
          gh<_i6.PremiumFirebaseDataSource>(),
        ));
    gh.factory<_i14.PremiumBloc>(
        () => _i14.PremiumBloc(gh<_i13.PremiumRepository>()));
    gh.factory<_i15.QuestionsRepository>(
        () => _i15.QuestionsRepository(gh<_i7.FirebaseDataSource>()));
    gh.factory<_i16.IPaymentsRepository>(() => _i17.PaymentsRepository(
          gh<_i5.PaymentsApi>(),
          gh<_i3.AuthRepository>(),
        ));
    gh.factory<_i18.GetRandomQuestionsForTest>(() =>
        _i18.GetRandomQuestionsForTest(
            repository: gh<_i15.QuestionsRepository>()));
    gh.factory<_i19.TestingBloc>(
        () => _i19.TestingBloc(gh<_i18.GetRandomQuestionsForTest>()));
    gh.factory<_i20.PaymentStatusBloc>(
        () => _i20.PaymentStatusBloc(gh<_i16.IPaymentsRepository>()));
    gh.factory<_i21.PaymentDataBloc>(
        () => _i21.PaymentDataBloc(gh<_i16.IPaymentsRepository>()));
    return this;
  }
}

class _$InjectionModule extends _i22.InjectionModule {}
