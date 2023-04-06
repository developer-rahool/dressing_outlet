import 'package:dressing_outlet/utils/Category_list.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/ontap_items.dart';

class BagsCategory extends StatefulWidget {
  const BagsCategory({Key? key}) : super(key: key);

  @override
  State<BagsCategory> createState() => _BagsCategoryState();
}

class _BagsCategoryState extends State<BagsCategory> {
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
              children: List.generate(bags.length, (index) {
                return Column(
                    children: [
                      OnTapItems(
                        subTitleName: bags[index],
                        subBodyName: bags[index],
                        assetImageName: "Images/bags/bags$index.jpg",
                        assetLabelName: bags[index],
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
