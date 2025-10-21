import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBanner extends StatelessWidget {
  final String title; // Text at the bottom
  final Widget? closeButton; // optional close button
  final Widget? centerImage; // optional image or icon in the middle
  final double width;
  final double height;

  const TopBanner({
    super.key,
    required this.title,
    this.closeButton,
    this.centerImage,
    this.width = 343,
    this.height = 192,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          // Main gradient container
          Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF3B82F6), Color(0xFF04BCA6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
            ),
          ),

          // Optional close button
          if (closeButton != null)
            Positioned(top: 8.h, right: 8.w, child: closeButton!),

          // Optional center image/icon
          if (centerImage != null)
            Positioned(
              top: 32.h,
              left: (width / 2 - 40).w, // centered horizontally
              child: SizedBox(width: 80.w, height: 80.h, child: centerImage!),
            ),

          // Title text at the bottom
          Positioned(
            top: 128.h,
            left: 29.91.w,
            child: SizedBox(
              width: 292.w,
              height: 32.h,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                  height: 32 / 24,
                  letterSpacing: 0,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
