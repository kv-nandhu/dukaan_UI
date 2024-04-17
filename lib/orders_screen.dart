import 'package:dukaan/detail.dart';
import 'package:flutter/material.dart';


class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        //appbar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 101, 156),
          //  actionsIconTheme: IconThemeData(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Orders",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              )
            ],
          ),
          
          centerTitle: true,
          actions: const [
            Padding(padding: EdgeInsets.all(10.0),
             child: Icon(
              Icons.search,
              color: Colors.white,
            ),),
           
          ],

          //tab bar
          bottom: TabBar(
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Accepted',
              ),
              Tab(
                text: 'Shipped',
              ),
              Tab(
                text: 'Delivered',
              ),
              Tab(
                text: 'Rejected',
              ),
              Tab(
                text: 'Cancelled',
              ),
              Tab(
                text: 'Failed',
              ),
            ],
            unselectedLabelColor: Colors.white,
            labelColor: const Color.fromARGB(255, 247, 247, 247),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            isScrollable: true,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
              //color: Color.fromARGB(255, 244, 244, 244)
            ),
            indicatorPadding: EdgeInsets.all(8),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Column(
              children: [
                //tile1
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => OrderDetail()));
                  },
                  leading: Image.asset('images/img16.jpg'),
                
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(""),
                      Text("Double Choclate Frozen "),
                      Text("₹250"),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ),
                SizedBox(
                  height: 20,
                ),

                //tile2
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => OrderDetail()));
                  },
                   leading: Image.asset('images/img8.jpg'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Chocolate Cake"),
                    
                      Text("₹3000"),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}