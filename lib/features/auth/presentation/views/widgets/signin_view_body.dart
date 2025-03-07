import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signin(
                          email: email,
                          password: password,
                        );
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'تسجيل دخول',
              ),
              SizedBox(height: 33),
              DontHaveAnAccountWidet(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesApplIcon,
                title: 'تسجيل بواسطة أبل',
                onPressed: () {
                  context.read<SigninCubit>().signinWithApple();
                },
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
                onPressed: () {
                  context.read<SigninCubit>().signinWithFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
