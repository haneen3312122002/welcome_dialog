import 'dart:ffi';

import 'package:aumet_welcome_dialog/features/widgets/features_box.dart';
import 'package:aumet_welcome_dialog/features/widgets/rewords_ox.dart';
import 'package:aumet_welcome_dialog/features/widgets/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TopBanner(
            title: "Welcome to the Pulse World",
            closeButton: InkWell(
              onTap: () => Navigator.pop(context),
              borderRadius: BorderRadius.circular(9999),
              child: Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: const Color(0x33FFFFFF),
                  borderRadius: BorderRadius.circular(9999),
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 20),
              ),
            ),
            centerImage: Container(
              decoration: BoxDecoration(
                color: const Color(0x33FFFFFF),
                borderRadius: BorderRadius.circular(9999),
              ),
              child: const Icon(Icons.home, color: Colors.white, size: 40),
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 25.08.w, right: 9.65.w),
            child: SizedBox(
              height: 68.25.h,
              width: 308.27.w,
              child: Text(
                'Discover a world built for independent pharmacies\nwhere all come together in perfect synergy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 23 / 14,
                  letterSpacing: 0,
                  color: Color(0xFF5A686C),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FeaturesBox(
                  title: "Marketplace",
                  subtitle: "Buy directly from verified suppliers",
                  leading: Icon(Icons.home, size: 28, color: Colors.blueAccent),
                ),
                SizedBox(height: 16.h),
                FeaturesBox(
                  title: "Pharmacy to Pharmacy - P2P",
                  subtitle: "Sell to 3000+ pharmacies instantly",
                  leading: Icon(Icons.home, size: 28, color: Colors.blueAccent),
                ),
                SizedBox(height: 16.h),
                FeaturesBox(
                  title: "Pharmacy Management System",
                  subtitle: "Run your entire system (POS, inventory, etc)",
                  leading: Icon(Icons.home, size: 28, color: Colors.blueAccent),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
          RewardsBox(
            icon: Icon(Icons.home, size: 24.sp, color: Colors.blue),
            title: "Earn Exclusive Rewards",
            textSpans: [
              TextSpan(text: "Earn "),
              TextSpan(
                text: "\$55",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: " rewards instantly in your wallet!"),
            ],
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16.r),
              child: Container(
                width: 295.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF04BCA6),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    height: 1.0,
                    letterSpacing: 0,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
