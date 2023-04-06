import 'package:dressing_outlet/utils/Category_list.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/ontap_items.dart';

class WomenCategory extends StatefulWidget {
  const WomenCategory({Key? key}) : super(key: key);

  @override
  State<WomenCategory> createState() => _WomenCategoryState();
}

class _WomenCategoryState extends State<WomenCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.68,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 60,
              crossAxisSpacing: 15,
              children: List.generate(women.length, (index) {
                return Column(
                  children: [
                    OnTapItems(
                    subTitleName: women[index],
                    subBodyName: women[index],
                    assetImageName: "Images/women/women$index.jpg",
                    assetLabelName: women[index],
                    ),
                    ]
                );
              }),
            ),
          )
        ],
      ),
    );

  }
}
