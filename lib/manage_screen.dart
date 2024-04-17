import 'package:dukaan/payment_screen.dart';
import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
   List<Icon> icons = [
    Icon(
      Icons.payment_rounded,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.discount_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.group,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.bolt_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.circle_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.electric_bike_outlined,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    Icon(
      Icons.qr_code,
      size: 40,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
  ];

  List<Color> colors = [
    const Color.fromARGB(255, 0, 255, 8),
    Colors.orange,
    Colors.green,
    Color.fromARGB(255, 67, 59, 125),
    Color.fromARGB(255, 48, 41, 250),
    Color.fromARGB(255, 68, 3, 133),
    const Color.fromARGB(255, 54, 57, 54),
  ];

  List<String> names = [
    'Payments',
    'Discount Coupons',
    'Audience',
    'Dukaan Plugins',
    'Dukaan Themes',
    'Delivery',
    'Store QR Code',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
          //---------text------------
          title: Text("Mano Super Market",
          style: TextStyle(color: const Color.fromARGB(255, 251, 251, 251)),),
          centerTitle: true,

          //----------------Bg Color-------------------
          backgroundColor: Color.fromARGB(255, 16, 10, 201),

          //---------------Leading------------
          // leading: Icon(Icons.home),

          //-------------Actions------------
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],   
            //---------------Elevation-------------------------
            elevation: 30,
        ),
      body:  Padding(
        padding: EdgeInsets.all(12),
        child: Expanded(
          child: GridView.builder(
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 3)),
              itemBuilder: (context, index) {
                return GridTile(
                    child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage(),));
                    },
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 40,
                              color: colors[index],
                              child: Center(
                                child: icons[index],
                              ),
                            )),
                        Text(names[index])
                        
                      ],
                    ),
                  ),
                ));
              }),
        ),
      ),
    );
  }
}








  