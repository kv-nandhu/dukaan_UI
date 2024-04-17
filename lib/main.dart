import 'package:dukaan/home.dart';
import 'package:flutter/material.dart';

 // ignore: constant_identifier_names
 const Save_key='userlogin';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
       
      
         
      


      title: "Demo App",
      home: HomeScreen(),
    );
  }
}