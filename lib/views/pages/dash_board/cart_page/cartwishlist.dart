import 'package:dressing_outlet/views/widgets/arrow_back_button.dart';
import 'package:flutter/material.dart';

class CartWishlist extends StatelessWidget {
  const CartWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: appBarBackButton(context),
        title: const Text("Wishlist",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24, fontFamily: "Acme"),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
