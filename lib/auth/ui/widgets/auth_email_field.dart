import 'package:flutter/material.dart';
import 'package:nok_test/auth/ui/widgets/clear_icon_button.dart';

class AuthEmailField extends StatefulWidget {
  const AuthEmailField({
    super.key,
    required this.onChanged,
    this.errorText,
  });

  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  State<AuthEmailField> createState() => _AuthEmailFieldState();
}

class _AuthEmailFieldState extends State<AuthEmailField> {
  bool _showClearIcon = false;
  final _controller = TextEditingController();

  void _handleTextLength() {
    if (_controller.text.isEmpty && _showClearIcon) {
      setState(() => _showClearIcon = false);
    }
    if (_controller.text.isNotEmpty && !_showClearIcon) {
      setState(() => _showClearIcon = true);
    }
  }

  @override
  void initState() {
    _controller.addListener(_handleTextLength);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле обязательно для заполнения';
    }
    return null;
  }

  void _clearText() {
    setState(() => _controller.clear());
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        suffixIcon: _showClearIcon ? ClearIconButton(onPressed: _clearText) : null,
        suffixIconColor: const Color(0xFF464646),
        fillColor: const Color(0xFFF5F5F5),
        label: const Text('Почта'),
        errorText: widget.errorText,
      ),
      onChanged: widget.onChanged,
      validator: _validate,
    );
  }
}
