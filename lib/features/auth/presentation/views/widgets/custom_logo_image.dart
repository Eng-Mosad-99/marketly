
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly/core/utils/app_assets.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 100.w, vertical: 50.h),
      child: Image.asset(
        AppAssets.logo,
      ),
    );
  }
}
