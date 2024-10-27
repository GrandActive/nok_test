import 'package:flutter/material.dart';
import 'package:nok_test/auth/ui/widgets/visibility_icon_button.dart';

class AuthPasswordField extends StatefulWidget {
  const AuthPasswordField({
    super.key,
    required this.onChanged,
    this.errorText,
    this.textInputAction = TextInputAction.done,
    this.onSubmitted,
  });

  final ValueChanged<String> onChanged;
  final String? errorText;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onSubmitted;

  @override
  State<AuthPasswordField> createState() => _AuthPasswordFieldState();
}

class _AuthPasswordFieldState extends State<AuthPasswordField> {
  bool _obscureText = true;

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле обязательно для заполнения';
    }
    return null;
  }

  void _toggleVisibility() {
    setState(() => _obscureText = !_obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        label: const Text('Пароль'),
        suffixIcon: ExcludeFocusTraversal(
          child: VisibilityIconButton(
            visible: !_obscureText,
            onPressed: _toggleVisibility,
          ),
        ),
        suffixIconColor: const Color(0xFF464646),
        errorText: widget.errorText,
      ),
      obscuringCharacter: '*',
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      validator: _validate,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onSubmitted,
    );
  }
}
