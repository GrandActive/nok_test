import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/password_restoration_bloc/password_restoration_bloc.dart';
import 'package:nok_test/auth/data/exceptions/password_restoration_exception.dart';
import 'package:nok_test/auth/ui/widgets/auth_email_field.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/navigation.dart';

@RoutePage()
class PasswordRestorationInputPage extends StatefulWidget {
  const PasswordRestorationInputPage({super.key});

  @override
  State<PasswordRestorationInputPage> createState() => _PasswordRestorationInputPageState();
}

class _PasswordRestorationInputPageState extends State<PasswordRestorationInputPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  String? _error;

  void _submit() {
    final valid = _formKey.currentState!.validate();
    if (valid) {
      context.read<PasswordRestorationBloc>().add(PasswordRestorationEvent.started(email: _email));
    }
  }

  void _handleException(PasswordRestorationException exception) {
    final errorText = switch (exception) {
      InvalidEmailException() => 'Некорректный адрес',
      UnknownException() => 'Неизвестная ошибка',
    };
    setState(() => _error = errorText);
  }

  void _navigateToResultPage(String email) {
    context.router.replace(PasswordRestorationResultRoute(email: email));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordRestorationBloc, PasswordRestorationState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (email) => _navigateToResultPage(email),
          failure: (exception) => _handleException(exception),
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
            title: const Text('Восстановление пароля'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  AuthEmailField(
                    onChanged: (value) => setState(() {
                      _email = value;
                      _error = null;
                    }),
                    errorText: _error,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _submit(),
                  ),
                  const SizedBox(height: 32),
                  AppFilledButton(
                    onPressed: isLoading ? null : _submit,
                    child: const Text('Продолжить'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
