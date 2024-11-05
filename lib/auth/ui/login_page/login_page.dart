import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nok_test/auth/bloc/log_in_bloc/log_in_bloc.dart';
import 'package:nok_test/auth/data/exceptions/log_in_exception.dart';
import 'package:nok_test/auth/ui/widgets/auth_email_field.dart';
import 'package:nok_test/auth/ui/widgets/auth_password_field.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/navigation.dart';

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => GetIt.I(),
      child: this,
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  String? _emailError;
  String? _passwordError;

  void _submit() {
    final valid = _formKey.currentState!.validate();
    if (valid) {
      context.read<LogInBloc>().add(LogInEvent.logIn(
            email: _email,
            password: _password,
          ));
    }
  }

  void _handleException(LogInException exception) {
    switch (exception) {
      case WrongEmailException():
        setState(() => _emailError = 'Некорректный адрес');
        break;
      case WrongPasswordException():
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(
            duration: Duration(seconds: 5),
            content: Text(
              'Неверный логин или пароль',
              style: TextStyle(color: Color(0xFFA72A2A)),
            ),
            backgroundColor: Color(0xFFE8E8E8),
            showCloseIcon: true,
            closeIconColor: Color(0xFFA72A2A),
          ));
        break;
      case TooManyRequestsException():
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            duration: const Duration(seconds: 5),
            content: const Text(
              'Слишком много неудачных попыток входа. Подождите несколько минут или обновите пароль',
            ),
            action: SnackBarAction(
              label: 'Обновить',
              onPressed: () {
                context.router.push(const PasswordRestorationRoute());
              },
            ),
          ));
        break;
      case UnknownException():
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(content: Text('Ошибка авторизации')));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final loading = context.watch<LogInBloc>().state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

    return BlocListener<LogInBloc, LogInState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (exception) => _handleException(exception),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const AutoLeadingButton(),
          title: const Text('Вход'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        AuthEmailField(
                          onChanged: (value) => setState(() {
                            _email = value;
                            _emailError = null;
                          }),
                          errorText: _emailError,
                        ),
                        const SizedBox(height: 24),
                        AuthPasswordField(
                          onChanged: (value) => setState(() {
                            _password = value;
                            _passwordError = null;
                          }),
                          errorText: _passwordError,
                          onSubmitted: (_) => _submit(),
                        ),
                        const SizedBox(height: 24),
                        AppFilledButton(
                          onPressed: loading ? null : _submit,
                          child: const Text('Войти'),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(const PasswordRestorationRoute());
                    },
                    child: const Text('Забыли пароль?'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(const RegistrationRoute());
                    },
                    child: const Text('Зарегистрироваться'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
