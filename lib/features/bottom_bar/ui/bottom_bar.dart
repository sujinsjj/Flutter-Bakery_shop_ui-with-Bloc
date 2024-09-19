import 'package:bakery_shop_app_ui/features/home/home_page.dart';
import 'package:bakery_shop_app_ui/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/widgets.dart';
import '../bloc/bottom_bar_bloc.dart';
import '../bloc/bottom_bar_event.dart';
import '../bloc/bottom_bar_state.dart';

class BottomBar extends StatelessWidget {
  final List<Widget> pages = [
    HomePage(),
    const Center(child: Text("Favorite")),
    const Center(child: Text("Category")),
    const Center(child: Text("Profile")),
  ];

  BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          if (state is BottomBarTabLoaded) {
            return pages[state.index];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          return BottomAppBar(
            height: 60,
            color:AppColor.primaryColor,
            shadowColor: Colors.black12,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomNavBarItem('home.svg', 0),
                _bottomNavBarItem('favorite.svg', 1),
                _bottomNavBarItem('widget.svg', 2),
                _bottomNavBarItem('profile.svg',3),
              ],
            ),
          );
        },
      ),
    );
  }
  Widget _bottomNavBarItem(String icon, int index){
    return BlocBuilder<BottomBarBloc,BottomBarState>(
        builder: (context, state){
          int currentIndex = 0;
          if (state is BottomBarTabLoaded) {
            currentIndex = state.index;
          }
          return InkWell(
            onTap: (){
              context.read<BottomBarBloc>().add(BottomBarTabChanged(index));
            },
            highlightColor: Colors.white.withOpacity(0.15),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width*0.25,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    svgIcon(icon, CupertinoColors.white, 22),
                    const SizedBox(height: 5,),
                    Container(
                      height: 5, width: 5,
                      decoration: BoxDecoration(
                          color: (currentIndex == index)
                              ? CupertinoColors.white
                              : Colors.transparent,
                        shape: BoxShape.circle
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}