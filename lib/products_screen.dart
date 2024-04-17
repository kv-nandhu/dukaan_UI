import 'package:dukaan/catagory.dart';
// ignore: unused_import
import 'package:dukaan/product_data.dart';
import 'package:dukaan/product_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:dukaan/order_data.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
               //----------------------App Bar-----------------------------
          appBar:AppBar(
          
            //---------text------------
            title: Text("Product",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
            centerTitle: true,
    
            //----------------Bg Color-------------------
            backgroundColor: Color.fromARGB(255, 16, 10, 201),
    
    
           
              //---------------Elevation-------------------------
              elevation: 30,
                bottom: TabBar(
              labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
              tabs: const [
              Tab(text: 'Product',),
               Tab(text: 'Catagory',)
            ]),
          ),
    
    
          body: TabBarView(
            children: const [
              Product(),
              CatagoryScreen(),
              
            ],)
    
                       ),
    );
  }
}