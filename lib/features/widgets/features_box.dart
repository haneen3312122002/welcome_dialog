import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturesBox extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;

  const FeaturesBox({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: leading,
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              color: Color(0xFFF0F9F8), // لون الخلفية
              shape: BoxShape.circle, // لجعلها دائرة
              border: Border.all(
                color: Color(0xFFE5E7EB), // لون الحدود
                width: 1, // سمك الحدود (تقدر تغيّريه)
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    height: 20 / 14,
                    letterSpacing: 0,
                    color: const Color(0xFF1A2E35),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    height: 16 / 12,
                    letterSpacing: 0,
                    color: const Color(0xFF5A686C),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
