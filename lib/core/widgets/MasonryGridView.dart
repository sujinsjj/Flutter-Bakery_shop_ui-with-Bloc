import 'package:bakery_shop_app_ui/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget masonryGridView(int itemCount, List<String> img)
=> Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
  child: MasonryGridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      itemBuilder: (context, index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(img[index]),
            ),
            const SizedBox(height: 5,),
            const TitleText(text: 'Chocolate Strawberry Cake',fontSize: 13,),
            const SmallText(text: 'westerns',fontSize: 12,)
          ],
        );
      }
  ),

);