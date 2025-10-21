import 'dart:ffi';

import 'package:aumet_welcome_dialog/features/widgets/features_box.dart';
import 'package:aumet_welcome_dialog/features/widgets/rewards_box.dart';
import 'package:aumet_welcome_dialog/features/widgets/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            centerImage: ClipOval(
              child: Container(
                width: 32.w, // نفس حجم الدائرة اللي برا
                height: 32.h,
                decoration: const BoxDecoration(
                  color: Color(0x33FFFFFF),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/aumet.svg',
                    width: 44.52.w,
                    height: 44.60.h,
                    fit: BoxFit.contain, // يحافظ على تناسب الصورة بدون تقطيع
                  ),
                ),
              ),
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
                  leading: SvgPicture.asset(
                    'assets/marketplace.svg',
                    width: 15.75.w, // optional
                    height: 14.h, // optional
                    //fit: BoxFit.contain, // optional
                  ),
                ),
                SizedBox(height: 16.h),
                FeaturesBox(
                  title: "Pharmacy to Pharmacy - P2P",
                  subtitle: "Sell to 3000+ pharmacies instantly",
                  leading: SvgPicture.asset(
                    'assets/arrow.svg',
                    width: 12.7.w, // optional
                    height: 14.h, // optional
                    //fit: BoxFit.contain, // optional
                  ),
                ),
                SizedBox(height: 16.h),
                FeaturesBox(
                  title: "Pharmacy Management System",
                  subtitle: "Run your entire system (POS, inventory, etc)",
                  leading: SvgPicture.asset(
                    'assets/set.svg',
                    width: 17.5.w, // optional
                    height: 14.h, // optional
                    //fit: BoxFit.contain, // optional
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
          RewardsBox(
            icon: SvgPicture.asset(
              'assets/reward.svg',
              width: 16.w, // optional
              height: 16.h, // optional
              //fit: BoxFit.contain, // optional
            ),
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
