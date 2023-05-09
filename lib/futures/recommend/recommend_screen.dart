import 'package:aniwolrd/core_data/ui/app_colors/app_colors.dart';
import 'package:aniwolrd/core_data/ui/app_fons/app_fonts.dart';
import 'package:aniwolrd/futures/main/main_screen.dart';
import 'package:aniwolrd/resources/resources.dart';
import 'package:flutter/material.dart';

import '../../core_data/ui/common_widgets/textfield_widget.dart';

class RecommendScreen extends StatefulWidget {
  RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                'Рекомаендации',
                style: AppFonts.w500s22.copyWith(color: AppColors.white),
              ),
            ),
            SizedBox(
                height: 550,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RecomenContainerWidget(),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class RecomenContainerWidget extends StatelessWidget {
  const RecomenContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 297,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.jojo4,
            width: 340,
            height: 228,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'JoJo s Bizarre Adventure:\nStone Ocean Part 3',
            style: AppFonts.w700s16.copyWith(color: AppColors.white),
          ),
          Text(
            'Adventure Seinen Action',
            style: AppFonts.w400s16.copyWith(color: AppColors.greywhite),
          )
        ],
      ),
    );
  }
}
