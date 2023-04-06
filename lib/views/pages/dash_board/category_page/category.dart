import 'package:dressing_outlet/utils/Category_list.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/Bags_category/bags_category.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/beauty_category/beauty_category.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/men_category/men_category.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/shoes_category/shoes_category.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/women_category/women_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/cupertino_search_bar.dart';
import '../../../widgets/repeated_tab.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);
  @override
  State<Category> createState() => _Category();
}
class _Category extends State<Category> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
    length: 5,
      child: Scaffold(
          appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
            bottom: const TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              indicatorWeight: 4,
              indicatorColor: Colors.yellow,
              tabs:  [
              RepeatedTab(title: "Men",),
              RepeatedTab(title: "Women",),
              RepeatedTab(title: "Shoes",),
              RepeatedTab(title: "Bags",),
              RepeatedTab(title: "Beauty",),
             ],
        ),
          ),
        body:  const TabBarView(
          children:  [
            MenCategory(),
            WomenCategory(),
            ShoesCategory(),
            BagsCategory(),
            BeautyCategory(),
          ],
      ),
      ),
    );
  }
}