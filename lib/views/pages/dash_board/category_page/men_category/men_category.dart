import 'package:flutter/material.dart';

import '../../../../../utils/Category_list.dart';
import '../../../../widgets/ontap_items.dart';

class MenCategory extends StatefulWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  State<MenCategory> createState() => _MenCategoryState();
}
class _MenCategoryState extends State<MenCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
              child: GridView.count(
                mainAxisSpacing: 60,
                crossAxisSpacing: 15,
                crossAxisCount: 3,
                children: List.generate(men.length, (index){
                  return  Column(
                    children: [
                      OnTapItems(
                         subTitleName: men[index],
                         subBodyName: men[index],
                        assetImageName: "Images/men/men$index.jpg",
                        assetLabelName: men[index],

                       ),
                  ],
                      );
                  },
                ),
              ),
            ),
        ],
      ),
    );

  }

}

