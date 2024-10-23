import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_a/layout/news_app/cubit/cubit.dart';
import 'package:news_app_a/layout/news_app/cubit/states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = NewsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text("News App"),
                actions: [
                 IconButton(onPressed: (){}, icon:Icon(Icons.search))
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: cubit.bottomItems,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
              ),
              body:cubit.screen[cubit.currentIndex],
            );
          }),
    );
  }
}
