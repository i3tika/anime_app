import 'package:aniwolrd/core_data/ui/app_colors/app_colors.dart';
import 'package:aniwolrd/core_data/ui/app_fons/app_fonts.dart';
import 'package:aniwolrd/futures/main/dog_bloc/dog_bloc.dart';
import 'package:aniwolrd/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<DogBloc>(context).add(GetDogEvent());
    return  Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/564x/d4/c6/e7/d4c6e711a9530819b2f58a619128abdd.jpg'),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings_outlined,
                            color: AppColors.black,
                          )),
                      radius: 25,
                      backgroundColor: AppColors.blueBerz,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'i3udeshov',
                style: AppFonts.w700s18.copyWith(color: AppColors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '@Shinigami_tiki02',
                style: AppFonts.w400s16.copyWith(color: AppColors.greywhite),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Аниме колекция',
                  style: AppFonts.w500s22.copyWith(color: AppColors.white),
                ),
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
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        // width: 340,
                        // height: 160,
                        child: Image.network(
                          'https://tvshowguide.ru/wp-content/uploads/2021/12/fullmetal-alchemist.jpg',
                          width: 160,
                          height: 160,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              RowWidgetSettings(
                title: 'Anime List',
                onPressed: () {
                  print('200');
                },
              ),
              const SizedBox(
                height: 8,
              ),
              RowWidgetSettings(
                onPressed: () {
                  print('200');
                },
                title: 'Сейчас смотрю',
              ),
              const SizedBox(
                height: 8,
              ),
              RowWidgetSettings(
                onPressed: () {
                  print('200');
                },
                title: 'Мой отзыв',
              ),
              const SizedBox(
                height: 8,
              ),
              RowWidgetSettings(
                onPressed: () {
                  print('200');
                },
                title: 'Найстройки',
              ),
            ],
          ),
        ),
      
    );
  }
}

class RowWidgetSettings extends StatelessWidget {
  const RowWidgetSettings({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppFonts.w400s16.copyWith(color: AppColors.white),
        ),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_right,
              color: AppColors.white,
              size: 30,
            ))
      ],
    );
  }
}
