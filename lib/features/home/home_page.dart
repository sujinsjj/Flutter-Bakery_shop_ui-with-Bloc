import 'package:bakery_shop_app_ui/core/widgets/category_list/category_list.dart';
import 'package:bakery_shop_app_ui/core/widgets/search_bar.dart';
import 'package:bakery_shop_app_ui/core/widgets/text.dart';
import 'package:bakery_shop_app_ui/features/home/bloc/home_bloc.dart';
import 'package:bakery_shop_app_ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../core/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: svgIcon('menu.svg', AppColor.primaryColor, 26)),
            actions: [
              Container(
                height: 35, width: 35,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: svgIcon('bell.svg', Colors.white, 18)),
              ),
              const SizedBox(width: 15,),
              Container(
                  height: 35,
                  width: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      svgIcon('basket-plus.svg', Colors.white, 15),
                      const Text('3', style: TextStyle(color: Colors.white),)
                    ],
                  )
              ),
              const SizedBox(width: 20,),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(
                  text: 'What would \n You like to eat?', fontSize: 26,),
                const SizedBox(height: 25,),
                searchBar(),
                const SizedBox(height: 22,),
                categoriesList(),
                const SizedBox(height: 22,),
                const TitleText(text: 'Over Popular Items'),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),

                )
              ],
            ),
          ),
        );
      },
    );
  }
}
