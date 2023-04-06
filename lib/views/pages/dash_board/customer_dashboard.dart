import 'package:dressing_outlet/views/pages/dash_board/cart_page/Cart.dart';
import 'package:dressing_outlet/views/pages/dash_board/category_page/category.dart';
import 'package:dressing_outlet/views/pages/dash_board/store_page/store.dart';
import 'package:flutter/material.dart';
import 'Profile_page/profile.dart';
import 'home_page/home.dart';

class CustomerDashBoard extends StatefulWidget {
  const CustomerDashBoard({Key? key}) : super(key: key);
  @override
  State<CustomerDashBoard> createState() => _CustomerDashBoardState();
}

class _CustomerDashBoardState extends State<CustomerDashBoard> {
  var selectIndex = 0;
  final List<Widget> _tabList = const [
    Home(),
    Category(),
    Store(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabList[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold) ,
          unselectedItemColor: Colors.black54,
          currentIndex: selectIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          }),
    );
  }
}
