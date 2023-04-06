import 'package:flutter/material.dart';
import '../pages/dash_board/category_page/sub_category.dart';

class OnTapItems extends StatelessWidget {
  final String subTitleName;
  final String subBodyName;
  final String assetImageName;
  final String assetLabelName;
  const OnTapItems({Key? key,
      required this.subTitleName,
    required this.subBodyName,
    required this.assetImageName,
    required this.assetLabelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=> SubCategoryProduct(
                  subTitleName: subTitleName,
                  subBodyName: subBodyName,
                )
            )
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 90,
            width: 90,
            child: Image(image: AssetImage(assetImageName),),
          ),
          Text(assetLabelName),
        ],
      ),
    );
  }
}