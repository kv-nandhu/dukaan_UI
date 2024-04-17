import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //appbar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 101, 156),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Order ",
            style: TextStyle(color: Colors.white),
          ),
        ),

        //body
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text("Nov 19, 05:15 PM",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color:  Color.fromARGB(255, 72, 233, 78),
                        ),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("#1"),
                  Row(
                    children: [
                      Icon(
                        Icons.receipt,
                        color: Color.fromARGB(255, 1, 69, 100),
                      ),
                      Text(
                        "RECEIPT",
                        style:
                            TextStyle(color: Color.fromARGB(255, 1, 69, 100)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                         Image.asset('images/img16.jpg',height: 70,),
                  
                        SizedBox(
                          height: 20,
                        )
                        //Text("data")
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "Chocolate Cake",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      
                        Text("#1 Item"),
                        SizedBox(
                          height: 0,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text("₹3000"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Item Price"),
                        Text("Delivery"),
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("₹3000"),
                        Text(
                          "FREE",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text("₹3000"),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CUSTOMER DETAILS",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nandhu Krishna kv",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text("+91-9778574297"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text("Thrissur"),
                      Text("Kerala"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "City",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text("Hustle Hub techpark"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
