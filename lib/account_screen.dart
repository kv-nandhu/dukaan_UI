import 'package:dukaan/additional.dart';
import 'package:dukaan/vip.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          //---------text------------
          title: Text("Account",
          style: TextStyle(color: const Color.fromARGB(255, 254, 254, 254)),),
          centerTitle: true,

          //----------------Bg Color-------------------
          backgroundColor: Color.fromARGB(255, 16, 10, 201),
 
            //---------------Elevation-------------------------
            elevation: 30,
        ),
      body: ListView(
        children: [
          Positioned(
            top: MediaQuery.of(context).viewInsets.top,
            child: SizedBox(
              child: Container(
                color: Colors.yellow,
                height: 50,
                child: Center(
                  child: Text(
                    '4 days left in your trail.subscribe',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      color: Color.fromARGB(255, 237, 231, 231),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Icon(
                      Icons.home,
                      size: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Nandhu',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Edit bussiness details',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(136, 211, 203, 203)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Available credits'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '₹40',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: Text('Add credits'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.person_2_outlined,
                    size: 30,
                  ),
                  title: Text('Account detials'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.expand_more)),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.settings_outlined,
                    size: 30,
                  ),
                  title: Text('Store settings'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.expand_more)),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.tv_outlined,
                    size: 30,
                  ),
                  title: Text('Dukhan for PC'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ),
                ListTile(
                  onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>PremiumPage()));
                  },
                  leading: Icon(
                    Icons.people_alt_outlined,
                    size: 30,
                  ),
                  title: Text('Join dukhan VIP club'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.play_circle_outlined,
                    size: 30,
                  ),
                  title: Text('Tutorials'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.help_outline_outlined,
                    size: 30,
                  ),
                  title: Text('Helper center'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>AdditionalScreen()));
                  },
                  leading: Icon(
                    Icons.more_horiz_rounded,
                    size: 30,
                  ),
                  title: Text('Additional Information'),
                  trailing: IconButton(
                      onPressed: () {
                           
                      }, icon: Icon(Icons.chevron_right)),
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OUR PROMISE',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 194, 216, 234),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Icon(
                                      Icons.verified_user_outlined,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('100% Safe')
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                color: Color.fromARGB(255, 249, 224, 203),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Icon(
                                      Icons.cloud_done_outlined,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Auto Data Backup')
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}