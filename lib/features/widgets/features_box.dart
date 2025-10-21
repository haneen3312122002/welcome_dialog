import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturesBox extends StatelessWidget {
  final Widget leading; // icon or image
  final String title; // bold text
  final String subtitle; // regular text

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
          leading,
          SizedBox(width: 12.w),
          Expanded(
            // ensures text fits inside the row
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // vertically center
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700, // Bold
                    fontSize: 14.sp,
                    height: 20 / 14,
                    letterSpacing: 0,
                    color: const Color(0xFF1A2E35),
                  ),
                  overflow: TextOverflow.ellipsis, // avoid overflow
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w400, // Regular
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
