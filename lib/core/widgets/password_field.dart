import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        obscureText: obscureText,
        onSaved: widget.onSaved,
        hintText: 'كلمة المرور',
        textInputType: TextInputType.visiblePassword,
        suffixIcon: InkWell(
          onTap: () {
            obscureText = !obscureText;
            setState(() {});
          },
          child: obscureText
              ? const Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                )
              : const Icon(
                  Icons.visibility_off,
                  color: Color(0xFFC9CECF),
                ),
        ));
  }
}
