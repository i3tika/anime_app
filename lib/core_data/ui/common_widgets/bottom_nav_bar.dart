import 'package:aniwolrd/core_data/ui/app_fons/app_fonts.dart';
import 'package:aniwolrd/futures/main/main_screen.dart';
import 'package:aniwolrd/futures/recommend/recommend_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../futures/favorites/favorites_screens.dart';
import '../../../futures/main/bloc/anime_top_bloc.dart';
import '../../../futures/profile/profile_screeen.dart';
import '../app_colors/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  int index = 1;
  bool colors = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [Center(child: getSelectedINdex(index: index))],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          // buttonBackgroundColor: AppColors.blueBerz,
          color: AppColors.greyblue,
          backgroundColor: AppColors.darkFon,
          items: const <Widget>[
            Icon(
              Icons.home_outlined,
              size: 30,
            ),
            Icon(Icons.search, size: 30),
            Icon(Icons.favorite_outline, size: 30),
            Icon(Icons.account_circle_outlined, size: 30),
          ],
          index: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          height: 70,
          animationDuration: const Duration(milliseconds: 250),
        ),
      ),
    );
  }

  Widget getSelectedINdex({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = MainScreen();
        break;
      case 1:
        widget = RecommendScreen();
        break;
      case 2:
        widget = const Favorites();
        break;
      case 3:
        widget = ProfileScreens();
        break;
      default:
        widget = MainScreen();
        break;
    }
    return widget;
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'One',
            style: AppFonts.w400s16.copyWith(color: AppColors.white),
          ),
        )
      ],
    );
  }
}

class MyWidgetThree extends StatelessWidget {
  const MyWidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Two',
            style: AppFonts.w400s16.copyWith(color: AppColors.white),
          ),
        )
      ],
    );
  }
}

class MyWidgetTwo extends StatelessWidget {
  const MyWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Two',
            style: AppFonts.w400s16.copyWith(color: AppColors.white),
          ),
        )
      ],
    );
  }
}
