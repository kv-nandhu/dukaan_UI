// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 
  @override
  Widget build(BuildContext context) {
    List lis1=[
      'ORDERS',
      'TOTAL SALES',
      'STORE VIEW',
      'PRODUCT VIEWS'
    ];
    List list2 =[
      '136',
      '₹82,915',
      '292',
      '6,327'
    ];
    List list3 =[
      'Add Product',
      'Product Reviews and Ratings',
      'Promotional Designs',
      'Add Shortcut'
    ];
     List<FaIcon> list4 =[
      FaIcon(FontAwesomeIcons.microsoft,color: Colors.white,),
      FaIcon(FontAwesomeIcons.quoteRight,color: Colors.white,),
      FaIcon(FontAwesomeIcons.palette,color: Colors.white,),
     FaIcon(FontAwesomeIcons.plus)
    ];
    List<Color> clro = [
      Colors.indigo.shade900,
      Color.fromARGB(255, 255, 175, 3),
      Color.fromARGB(255, 244, 101, 13),
      Colors.white 
      
      
    ];
    return Scaffold(
             //----------------------App Bar-----------------------------
        appBar:AppBar(
          //---------text------------
          title: Text("Mano Šuper Market",
          style: TextStyle(color: const Color.fromARGB(255, 251, 251, 251)),),
          

          //----------------Bg Color-------------------
          backgroundColor: Color.fromARGB(255, 16, 10, 201), 
            //---------------Elevation-------------------------
            actions: [Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.circle,color:  Color.fromARGB(255, 16, 10, 201),),label: Text('Online'),style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
              ),),
            )],
            elevation: 30,
        ),


        body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 32),
            // width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //---------------------------card=1-----------------
            Stack(
              children:[ 
                Container(
                  height: 100,
                  color:Color.fromARGB(255, 16, 10, 201) ,
                )
                ,Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  elevation: 10,
                  child: Card(
                    child: Column(
                    children:  [
                      ListTile(
                        title: Text("Share store link",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                        subtitle: Text("Customers can visit the following link and place their order",style: TextStyle(color: Colors.black),),
                      ),
                        ListTile(            
                        title: Text("manosuperstore.com",style: TextStyle(color: Colors.amber,decoration: TextDecoration.underline),                         
                        ),
                        trailing: ElevatedButton.icon(onPressed: (){}, icon:
                           FaIcon(FontAwesomeIcons.whatsapp), label: Text('share'),
                           style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.green)
                           ),
                           
                          
                        ),
                        
                      ),
                      
                    
                    ],
                                    ),
                  ),
                ),
              ),]
            ),
            SizedBox(
              height: 180,
              width:double.infinity,
              child:GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 7/3,
                  crossAxisCount: 2), itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridTile(
                    child: Card(
                      elevation: 10,
                      child: ListTile(
                         title: Text(lis1[index],style: TextStyle(fontSize: 9,color: const Color.fromARGB(255, 122, 120, 120),fontWeight: FontWeight.w600,),),
                      
                        subtitle: Text(list2[index],style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w700),),
                       
                      ),
                    ),
                  ),
                );
              },)
            ),
            ListTile(
              title: Text('Shortcuts',style: TextStyle(fontSize: 20),),
            ),
         SizedBox(
              height: 500,
              width:double.infinity,
              child:GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3/2,
                  crossAxisCount: 2), itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridTile(
                    child: Card(
                      elevation: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              height: 30,
                              width: 30,
                              color:clro[index],
                               child: Center(child: list4[index]),

                            ),
                            trailing:Icon(Icons.more_vert),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0)
                            
                            ,
                            child: Text(list3[index]),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },)
            ),
            
         
          ],
          ),
            ),
          ),
        )

                     );
  }
}