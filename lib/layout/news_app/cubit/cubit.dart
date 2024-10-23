import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_a/layout/news_app/cubit/states.dart';
import 'package:news_app_a/modules/business/business_screen.dart';
import 'package:news_app_a/modules/science/science_screen.dart';
import 'package:news_app_a/modules/sports/sport_screen.dart';

import '../../../modules/settings/settings_screen.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() :super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem>bottomItems = [

    BottomNavigationBarItem(
        icon: Icon(Icons.business),
      label: "Business",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: "sports",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: "science",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",

    ),
  ];
  List<Widget> screen =[
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    SettingsScreen(),

  ];
  void changeBottomNavBar(int index ){
    currentIndex = index;
    emit(BottomNavState());
  }


}
