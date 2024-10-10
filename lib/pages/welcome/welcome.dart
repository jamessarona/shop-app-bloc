import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            children: [
              PageView(
                children: [
                  _page(
                    1,
                    context,
                    'Next',
                    'First See learning',
                    'Forget about a for of proper all knowledge in one learning',
                    'image path',
                  ),
                  _page(
                    2,
                    context,
                    'Next',
                    'Connect With Everyone',
                    'Always keep in touch with your tutor & friend. Let'
                        's get connected ',
                    'image path',
                  ),
                  _page(
                    3,
                    context,
                    'Get Started',
                    'Always Fascinated Learning',
                    'Anywhere, amytime. The time is at our discrtion so study whenever you want',
                    'image path',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _page(int index, BuildContext context, String buttonName, String title,
    String subTitle, String imagePath) {
  return Column(
    children: [
      SizedBox(
        width: 345.w,
        height: 345.w,
        child: const Text('Image one'),
      ),
      Container(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Container(
        width: 375,
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Text(
          subTitle,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 100, left: 25.w, right: 25.w),
        width: 325.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(15.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 10,
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      )
    ],
  );
}
