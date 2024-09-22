import 'package:bakery_shop_app_ui/core/widgets/MasonryGridView.dart';
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
  List<String> img = [
    'https://i.pinimg.com/474x/9d/25/93/9d2593780fe22eba7acf1ea6e9e57110.jpg',
    'https://i.pinimg.com/474x/d6/02/c3/d602c33ad9463f2f98a83d94d7a6830f.jpg',
    'https://i.pinimg.com/474x/0e/cd/88/0ecd88bcf2f6207f3716a07a31c9ddcd.jpg',
    'https://i.pinimg.com/474x/69/b9/dc/69b9dc9be4f378930574be82f3356b37.jpg',
    'https://i.pinimg.com/474x/a2/c3/e7/a2c3e74b7a6ea6b96fb06cb97d46f1a5.jpg',
    'https://i.pinimg.com/474x/9d/25/93/9d2593780fe22eba7acf1ea6e9e57110.jpg',
    'https://i.pinimg.com/474x/d6/02/c3/d602c33ad9463f2f98a83d94d7a6830f.jpg',
    'https://i.pinimg.com/474x/0e/cd/88/0ecd88bcf2f6207f3716a07a31c9ddcd.jpg',
    'https://i.pinimg.com/474x/69/b9/dc/69b9dc9be4f378930574be82f3356b37.jpg',
    'https://i.pinimg.com/474x/a2/c3/e7/a2c3e74b7a6ea6b96fb06cb97d46f1a5.jpg',
  ];
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
            child: ListView(
              children: [
                const TitleText(
                  text: 'What would \n You like to eat?', fontSize: 26,),
                const SizedBox(height: 25,),
                searchBar(),
                const SizedBox(height: 22,),
                categoriesList(),
                const SizedBox(height: 20,),
                const TitleText(text: 'Over Popular Items'),
                masonryGridView(img.length, img)
              ],
            ),
          ),
        );
      },
    );
  }
}
