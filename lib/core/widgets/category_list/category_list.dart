import 'package:bakery_shop_app_ui/core/widgets/category_list/bloc/category_bloc.dart';
import 'package:bakery_shop_app_ui/core/widgets/widgets.dart';
import 'package:bakery_shop_app_ui/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bakery_shop_app_ui/core/widgets/text.dart';
import 'package:bakery_shop_app_ui/utils/color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Map<String, dynamic>> _cateItems = [
  {'icon': 'cake.svg', 'name': 'Cakes',},
  {'icon': 'pizza.svg', 'name': 'Westerns',},
  {'icon': 'flame.svg', 'name': 'Local',},
  {'icon': 'drink.svg', 'name': 'Drinks',},
  {'icon': 'ice-cream.svg', 'name': 'Dessert',},
  {'icon': 'snack.svg', 'name': 'Snack',},
  {'icon': 'bread.svg', 'name': 'Bread',},
];

Widget categoriesList() =>
    SizedBox(
      height: 90,
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                bool isSelected = false;
                if (state is CategorySelected) {
                  isSelected = state.selectedIndex == index;
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        context.read<CategoryBloc>().add(SelectCategoryEvent(index));
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected ? AppColor.primaryColor: AppColor.grey,
                        ),
                        child: Center(
                          child: svgIcon(
                              _cateItems[index]['icon'], isSelected ?Colors.white:Colors.grey, 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7,),
                    SmallText(text: _cateItems[index]['name'], fontSize: 13,)
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 12,),
              itemCount: _cateItems.length);
        },
      ),
    );