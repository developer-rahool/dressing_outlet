import 'package:dressing_outlet/utils/Category_list.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/ontap_items.dart';

class ShoesCategory extends StatefulWidget {
  const ShoesCategory({Key? key}) : super(key: key);

  @override
  State<ShoesCategory> createState() => _ShoesCategoryState();
}

class _ShoesCategoryState extends State<ShoesCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
        decelerationRate: ScrollDecelerationRate.fast,
      ),
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
                        subTitleName: shoes[index],
                        subBodyName: shoes[index],
                        assetImageName: "Images/shoes/shoes$index.jpg",
                        assetLabelName: shoes[index],
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
