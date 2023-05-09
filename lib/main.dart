import 'package:aniwolrd/core_data/dio_settings/dio_settings.dart';
import 'package:aniwolrd/core_data/ui/app_colors/app_colors.dart';
import 'package:aniwolrd/futures/main/bloc/anime_top_bloc.dart';
import 'package:aniwolrd/futures/main/dog_bloc/dog_bloc.dart';
import 'package:aniwolrd/futures/main/repo/anime_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core_data/ui/common_widgets/bottom_nav_bar.dart';
import 'futures/main/main_screen.dart';
import 'futures/main/repo/get_dogs_repo.dart';
import 'futures/profile/profile_screeen.dart';
import 'futures/recommend/recommend_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) =>
              GetDogsRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: BlocProvider(
        create: (context) =>
            DogBloc(repo: RepositoryProvider.of<GetDogsRepo>(context)),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.darkFon,
          ),
          home: BottomNavBar(),
        ),
      ),
    );
  }
}
