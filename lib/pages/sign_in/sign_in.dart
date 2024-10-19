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
                  margin: EdgeInsets.only(top: 40.h),
                  padding: EdgeInsets.only(left: 18.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      buildTextField(
                          'Enter you email address', 'email', 'user'),
                      reusableText('Password'),
                      buildTextField('Enter you password', 'password', 'lock'),
                      forgotPossword(),
                      buildLogInAndRegButton('Login in', 'login'),
                      buildLogInAndRegButton('Register', 'register'),
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
