import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';
import '../app_fons/app_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 44,
      child: TextField(
          style: AppFonts.w400s16.copyWith(color: AppColors.white),
          decoration: InputDecoration(
              filled: true, //<-- SEE HERE
              fillColor: AppColors.greyblue,
              focusColor: AppColors.white,
              focusedBorder: OutlineInputBorder(),
              hoverColor: AppColors.white,
              prefixIcon: Icon(Icons.search),
              suffixIconColor: AppColors.blueBerz,
              suffixIcon: Icon(Icons.category),
              prefixIconColor: AppColors.greywhite,
              hintStyle: AppFonts.w400s16.copyWith(color: AppColors.greywhite),
              hintText: 'Search',
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white)))),
    );
  }
}
