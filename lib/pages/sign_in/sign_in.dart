import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartLogin(context),
                Center(child: reusableText('Or use you email account login')),
                Container(
                  margin: EdgeInsets.only(top: 55.h),
                  padding: EdgeInsets.only(left: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(height: 5.h),
                      buildTextField(
                          'Enter you email address', 'email', 'user'),
                      reusableText('Password'),
                      SizedBox(height: 5.h),
                      buildTextField('Enter you password', 'password', 'lock'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
