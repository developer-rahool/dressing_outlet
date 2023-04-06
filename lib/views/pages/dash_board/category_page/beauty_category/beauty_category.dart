import 'package:dressing_outlet/utils/Category_list.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/ontap_items.dart';

class BeautyCategory extends StatefulWidget {
  const BeautyCategory({Key? key}) : super(key: key);

  @override
  State<BeautyCategory> createState() => _BeautyCategoryState();
}

class _BeautyCategoryState extends State<BeautyCategory> {
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
              children: List.generate(beauty.length, (index) {
                return Column(
                    children: [
                      OnTapItems(
                        subTitleName: beauty[index],
                        subBodyName: beauty[index],
                        assetImageName: "Images/beauty/beauty$index.jpg",
                        assetLabelName: beauty[index],
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
