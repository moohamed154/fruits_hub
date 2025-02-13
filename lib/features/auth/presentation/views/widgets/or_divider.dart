import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: const Color(0xFFDCDEDE),
            thickness: 1,
          ),
        ),
        SizedBox(width: 18),
        Text(
          'أو',
          style: TextStyles.semiBold16(context),
        ),
        SizedBox(width: 18),
        Expanded(
          child: Divider(
            color: const Color(0xFFDCDEDE),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
