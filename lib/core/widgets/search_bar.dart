import 'package:bakery_shop_app_ui/core/widgets/text.dart';
import 'package:bakery_shop_app_ui/core/widgets/widgets.dart';
import 'package:bakery_shop_app_ui/utils/color.dart';
import 'package:flutter/material.dart';

Widget searchBar(){
  return InkWell(
    onTap: (){},
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.grey
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.search_rounded, color: AppColor.primaryColor,),
              SizedBox(width: 10,),
              SmallText(text: 'Search here'),
            ],
          ),
          svgIcon('filter.svg', AppColor.primaryColor, 24)
        ],
      ),
    ),
  );
}