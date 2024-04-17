import 'package:flutter/material.dart';

class AdditionalScreen extends StatelessWidget {
  const AdditionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Additional Info',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 101, 156),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
          children: [
            ListTile(
              leading: Icon(Icons.share),
              onTap: () {},
              title: Text(
                "Share Dukaan App",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.lock_outline_rounded,
              ),
              onTap: () {},
              title: Text(
                "Privacy Policy",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star_border_purple500_outlined),
              onTap: () {},
              title: Text(
                "Rate Us",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              onTap: () {},
              title: Text(
                "Sign Out",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            SizedBox(
              height:500,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Version 2.2.0",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black54),
                )
              ],
            )
          ],
      ),
    );
  }
}