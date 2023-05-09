import 'package:aniwolrd/core_data/ui/app_colors/app_colors.dart';
import 'package:aniwolrd/futures/main/bloc/anime_top_bloc.dart';

import 'package:aniwolrd/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core_data/ui/app_fons/app_fonts.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<RickMortyBloc>(context).add(GetRickMortyEvent());
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(AppImages.jojo),
              ),
              const SizedBox(
                width: 9,
              ),
              Text(
                'Hello, i3udeshov',
                style: AppFonts.w700s18.copyWith(color: AppColors.white),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 26,
                backgroundColor: AppColors.greyblue,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: AppColors.blueBerz,
                    )),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: Text(
              'Продолжить просмотр',
              style: AppFonts.w500s22.copyWith(color: AppColors.white),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 290,
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.jojo,
                        width: 260,
                        height: 148,
                      ),
                      Text(
                        'JoJos Bizarre Adventure:\nDiamond Is Unbreakable',
                        style:
                            AppFonts.w700s16.copyWith(color: AppColors.white),
                      ),
                      Text(
                        '4 Season, Episode 1',
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.greywhite),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 175),
            child: Text(
              'Top 10 this month',
              style: AppFonts.w500s22.copyWith(color: AppColors.white),
            ),
          ),
          
          SizedBox(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ContainerTopAnime(
                      images: AppImages.bleach,
                      info: 'серии 366',
                      // 'sda',
                      nameAnime: 'Bleach',
                    );
                  })),
        ],
      ),
    );
  }
}

class ContainerTopAnime extends StatelessWidget {
  const ContainerTopAnime({
    super.key,
    required this.images,
    required this.nameAnime,
    required this.info,
  });
  final String images;
  final String nameAnime;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 277,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            images,
            // AppImages.bleach,
            width: 164,
            height: 228,
          ),
          Text(
            nameAnime,
            // 'Bleach',
            style: AppFonts.w700s16.copyWith(color: AppColors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            info,
            // 'Seinen Action',
            style: AppFonts.w400s16.copyWith(color: AppColors.greywhite),
          )
        ],
      ),
    );
  }
}
