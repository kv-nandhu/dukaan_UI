import 'package:dukaan/account_screen.dart';
import 'package:dukaan/home_screeen.dart';
import 'package:dukaan/manage_screen.dart';
import 'package:dukaan/orders_screen.dart';
import 'package:dukaan/products_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;
  List tabWidgets = [
   HomePage(),
    OrderPage(),
    ProductPage(),
    ManagePage(),
    AccountPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: BottomNavigationBar(
           items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color.fromARGB(255, 55, 57, 58),),
            label: "Home",
            backgroundColor: Color.fromARGB(255, 253, 252, 252) ),
            BottomNavigationBarItem(
            icon: Icon(Icons.list,color: Color.fromARGB(255, 55, 57, 58),),
            label: "Orders",
            backgroundColor: Color.fromARGB(255, 248, 250, 252) ),
            BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,color: Color.fromARGB(255, 55, 57, 58),),
            label: "Products",
            backgroundColor: Color.fromARGB(255, 242, 243, 244) ),
            BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion_outlined,color: Color.fromARGB(255, 55, 57, 58),),
            label: "Manage",
            backgroundColor: Color.fromARGB(255, 241, 241, 241) ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,color: Color.fromARGB(255, 55, 57, 58),),
            label: "Account",
            backgroundColor: Color.fromRGBO(255, 255, 255, 1) ),
        ],
        iconSize: 30,
        showUnselectedLabels: true,
        currentIndex:indexNum,
        unselectedItemColor: Color.fromARGB(255, 55, 57, 58),
        selectedItemColor: Color.fromARGB(255, 16, 10, 201),
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        }
        ),


        body: Center(
       child: tabWidgets.elementAt(indexNum),
       
    ));
  }

  // ignore: non_constant_identifier_names
 
}

