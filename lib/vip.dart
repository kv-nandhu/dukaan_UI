import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 34, 101, 156),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Dukaan Premium",
          style: TextStyle(color: Colors.white),
        ),
      ),

      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    color: Color.fromARGB(255, 34, 114, 180),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      color: Color.fromARGB(0, 255, 255, 255),
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(48)),
                            color: Color.fromARGB(255, 240, 235, 235)),
                        //color: Color.fromARGB(255, 243, 242, 241),
                        height: 300,
                        width: 400,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                            'https://bugbaseprofilepics.s3.ap-south-1.amazonaws.com/temp/bca714f03e7c31d193f14d375347d84da7ffaf30/logo.png-Mon%20Oct%2017%202022'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Dukaan",
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "\u00AE",
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Text(
                                        "PREMIUM",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Get Dukaan Premium For Just ",
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "₹4,999/Year ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "All The Advanced Features for Scaling your",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 128, 127, 127)),
                                  ),
                                  Text(
                                    "Business",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                //tile1
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 236, 234, 234),
                    child: Icon(Icons.map_outlined),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Custom domain name",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                          "Get your own custom domain and build your brand on the internet")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //tile2
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 236, 234, 234),
                    child: Icon(Icons.verified),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Verified seller badge",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                          "Get green verified badge under your store name and build trust")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //tile3
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 236, 234, 234),
                    child: Icon(Icons.desktop_mac_rounded),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dukaan for PC",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                          "Access all the exclusive premium features on Dukaan for PC")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //tile4
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 236, 234, 234),
                    child: Icon(Icons.support_agent_outlined),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Priority support",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                          "Get your questions resolved with our priority customer support")
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}