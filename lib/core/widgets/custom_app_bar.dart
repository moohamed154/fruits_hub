import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          // Handle the case where there is no back navigation
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('No previous page to navigate back to')),
          // );
        }
      },
      icon: Icon(Icons.arrow_back_ios_new),
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19(context),
    ),
  );
}
