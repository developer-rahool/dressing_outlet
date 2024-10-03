import 'package:dressing_outlet/views/pages/dash_board/cart_page/cartorder.dart';
import 'package:dressing_outlet/views/pages/dash_board/cart_page/cartwishlist.dart';
import 'package:flutter/material.dart';
import '../customer_dashboard.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24,fontFamily: "Acme",),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.delete_forever, color: Colors.black,)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
        height: 50,
        //width: MediaQuery.of(context).size.width*0.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.circular(50),
        ),
            child: Padding(
              padding: const EdgeInsets.all(5),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartOrder()));
                   },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.yellow,
                   ),
                   height: MediaQuery.of(context).size.height*0.16 ,
                   width: MediaQuery.of(context).size.width*0.29,
                   child: const Center(
                     child:  Text(
                       "Order",
                       style: TextStyle(
                           color: Colors.white,
                           fontFamily: "Acme",
                           fontSize: 20),
                     ),
                   ),
                 ),
               ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartWishlist()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    height: MediaQuery.of(context).size.height*0.16 ,
                    width: MediaQuery.of(context).size.width*0.29,
                    child:const Center(
                      child:  Text(
                        "Wishlist",
                        style:  TextStyle(
                            color: Colors.white,
                            fontFamily: "Acme",
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
          const SizedBox(height: 60,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Your Cart Is Empty!",
                style: TextStyle(fontSize: 30,fontFamily: "Acme",),
              ),
              const SizedBox(height: 20,),
              Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.075 ,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CustomerDashBoard()));
                  },
                  child: const Text(
                    "Continue Shopping",
                    style: TextStyle(
                        fontFamily: "Acme",
                        color: Colors.white,
                        fontSize:18),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>  [
            const Row(
              children: [
                Text(
                  "Total: Rs",
                  style: TextStyle(
                    fontFamily: "Acme",
                    fontSize: 22,
                  ),
                ),
                Text(
                  " 00.00",
                  style: TextStyle(
                    fontFamily: "Acme",
                    fontSize: 22,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width*0.1,
                onPressed: (){},
                child: const Text(
                  "Check Out",
                  style: TextStyle(
                      fontFamily: "Acme",
                      color: Colors.white,
                      fontSize:16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }