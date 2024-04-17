
// ignore_for_file: sort_child_properties_last

import 'package:dukaan/product_data.dart';
import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: Text('Catagary'),
          centerTitle: true,
          bottom: TabBar(tabs: const [
            Tab(child: Text('Product')),
            Tab(child: Text('Catagory'))
          ]),
        ),
        body: TabBarView(children: [Product(), catagory()]),
      ),
    );
  }
  
  catagory() {}
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var val = false;

  // ignore: non_constant_identifier_names
  Color Checkstock(String stocks) {
    if (stocks == 'In Stock') {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 215,
            child: Card(
              child: Column(children: [
                ListTile(
                  // ignore: sized_box_for_whitespace
                  leading: Container(
                      width: 70,
                      height: 80,
                      child: Image.asset(
                        '${productlist[index].imagesp}',
                        fit: BoxFit.cover,
                      )
                      ),
                  title: Text(productlist[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productlist[index].unit,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '₹${productlist[index].rate}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  title: Text(
                    productlist[index].stock,
                    style: TextStyle(
                        color: Checkstock(productlist[index].stock),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Switch(
                    value: val,
                    onChanged: (index) {
                      setState(() {
                        val = index;
                      });
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [Icon(Icons.share), Text('Share Product')],
                  ),
                )
              ]),
              elevation: 10,
            ),
          ),
        );
      },
    ));
  }
}