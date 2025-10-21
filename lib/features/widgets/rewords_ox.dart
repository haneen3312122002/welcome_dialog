import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardsBox extends StatelessWidget {
  final String title; // first bold text
  final List<TextSpan> textSpans; // rich text spans
  final Widget icon; // icon or image

  const RewardsBox({
    super.key,
    required this.title,
    required this.textSpans,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      child: Container(
        width: 295.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: const LinearGradient(
            colors: [Color(0x33FFD166), Color(0x33FF6B6B)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  SizedBox(width: 2.w),
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
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: 252.w,
                height: 20.h,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14.sp,
                      height: 20 / 14,
                      letterSpacing: 0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    children: textSpans,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
