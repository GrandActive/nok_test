import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nok_test/auth/bloc/registration_bloc/registration_bloc.dart';
import 'package:nok_test/auth/data/exceptions/registration_exception.dart';
import 'package:nok_test/auth/ui/widgets/auth_email_field.dart';
import 'package:nok_test/auth/ui/widgets/auth_password_field.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget implements AutoRouteWrapper {
  const RegistrationPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => GetIt.I(),
      child: this,
    );
  }

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  String? _emailError;
  String? _passwordError;

  void _submit() {
    final valid = _formKey.currentState!.validate();
    if (valid) {
      context.read<RegistrationBloc>().add(RegistrationEvent.credentialsSent(
            email: _email,
            password: _password,
          ));
    }
  }

  void _handleException(RegistrationException exception) {
    switch (exception) {
      case EmailAlreadyInUseException():
        setState(() => _emailError = 'Этот адрес уже используется');
        break;
      case InvalidEmailException():
        setState(() => _emailError = 'Некорректный адрес');
        break;
      case WeakPasswordException():
        setState(() => _passwordError = 'Слишком слабый пароль');
        break;
      case UnknownException():
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(content: Text('Ошибка регистрации')));
        break;
    }
  }

  void _showSuccessSnackBar() {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('Вы успешно зарегистрировались!')));
  }

  @override
  Widget build(BuildContext context) {
    final loading = context.watch<RegistrationBloc>().state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (exception) => _handleException(exception),
          success: () => _showSuccessSnackBar(),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const AutoLeadingButton(),
          title: const Text('Регистрация'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Form(
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
                  child: const Text('Продолжить'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
