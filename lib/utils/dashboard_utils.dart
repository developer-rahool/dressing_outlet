import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/balance.dart';
import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/edit_profile.dart';
import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/manage_product.dart';
import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/my_orders.dart';
import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/my_store.dart';
import 'package:dressing_outlet/views/pages/dash_board/sub_dashoard/statics.dart';
import 'package:flutter/material.dart';

  final List<String> dashboardLabel =[
    "My\nStore",
    "Orders",
    "Edit\nProfile",
    "Manage\nProducts",
    "Balance",
    "Statics",
  ];

  final List<IconData> dashboardIcons =[
    Icons.store,
    Icons.shop_2_outlined,
    Icons.edit,
    Icons.settings,
    Icons.currency_rupee,
    Icons.shopping_cart,

  ];

final List<Widget> subDashboardRoutes = [
  const MyStore(),
  const MyOrder(),
  const EditProfile(),
  const ManagerProduct(),
  const MyBalance(),
  const Statics(),
];
