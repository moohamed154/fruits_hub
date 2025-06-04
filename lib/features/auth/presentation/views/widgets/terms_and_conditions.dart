import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold16(context)
                      .copyWith(color: Color(0xFF949D9E)),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: TextStyles.semiBold16(context).copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold16(context),
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: TextStyles.semiBold16(context).copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold16(context),
                ),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.semiBold16(context).copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
