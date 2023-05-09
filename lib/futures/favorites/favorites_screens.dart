import 'package:aniwolrd/core_data/ui/app_colors/app_colors.dart';
import 'package:aniwolrd/core_data/ui/app_fons/app_fonts.dart';
import 'package:aniwolrd/core_data/ui/common_widgets/textfield_widget.dart';
import 'package:aniwolrd/resources/resources.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(),
          Row(
            children: [
              Text(
                'Favorite',
                style: AppFonts.w500s22.copyWith(color: AppColors.white),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_sharp,
                    color: AppColors.white,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        // width: 340,
                        // height: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppImages.kd,
                              width: 160,
                              height: 160,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Kimetsu no Yaiba',
                                style: AppFonts.w700s16
                                    .copyWith(color: AppColors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
