import 'package:dressing_outlet/views/widgets/cupertino_search_bar.dart';
import 'package:dressing_outlet/views/widgets/repeated_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const CupertinoSearchTextField(),
            bottom: const TabBar(
              isScrollable: true,
              indicatorWeight: 4,
              indicatorColor: Colors.yellow,
              tabs: [
                RepeatedTab(title: "Men",),
                RepeatedTab(title: "Women",),
                RepeatedTab(title: "Shoes",),
                RepeatedTab(title: "Bags",),
                RepeatedTab(title: "Beauty",),
              ],
            ),
          ),
          body: const TabBarView(
            children:  [
              Center(child: Text("Men"),),
              Center(child: Text("Women"),),
              Center(child: Text("shoes"),),
              Center(child: Text("Bags"),),
              Center(child: Text("Beauty"),),
            ],
          ),
        ),
    );
  }
}