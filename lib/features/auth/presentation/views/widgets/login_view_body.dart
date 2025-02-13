import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'كلمة المرور',
                textInputType: TextInputType.emailAddress,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold16(context).copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33),
              CustomButton(
                onPressed: () {},
                text: 'تسجيل دخول',
              ),
              SizedBox(height: 33),
              DontHaveAnAccountWidet(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل الدخول بواسطة جوجل',
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesApplIcon,
                title: 'تسجيل الدخول بواسطة أبل',
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل الدخول بواسطة فيسبوك',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
