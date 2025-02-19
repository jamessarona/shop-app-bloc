import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/common/values/colors.dart';
import 'package:shop_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:shop_app/pages/welcome/bloc/welcome_events.dart';
import 'package:shop_app/pages/welcome/bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeStates>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvents());
                  },
                  children: [
                    _page(
                      1,
                      context,
                      'Next',
                      'First See learning',
                      'Forget about a for of proper all knowledge in one learning',
                      'assets/images/reading.png',
                    ),
                    _page(
                      2,
                      context,
                      'Next',
                      'Connect With Everyone',
                      'Always keep in touch with your tutor & friend. Let'
                          's get connected ',
                      'assets/images/boy.png',
                    ),
                    _page(
                      3,
                      context,
                      'Get Started',
                      'Always Fascinated Learning',
                      'Anywhere, anytime. The time is at our discrtion so study whenever you want',
                      'assets/images/man.png',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    position: state.page,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: AppColors.primaryThreeElementText,
                      activeColor: AppColors.primaryElement,
                      size: const Size.square(8.0),
                      activeSize: const Size(18.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.primaryText,
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
              color: AppColors.primaryText.withOpacity(0.5),
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            } else {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('signIn', (route) => false);
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 100, left: 25.w, right: 25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(
                Radius.circular(15.w),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryFourthElementText.withOpacity(0.1),
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
                  color: AppColors.primaryElementText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
