import 'package:flutter/material.dart';
import 'package:dukaan/order_data.dart';

class CatagoryScreen extends StatefulWidget {
  const CatagoryScreen({super.key});

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
  Color cls = Colors.black38;
  Color cls1 = Colors.black38;
  Color cls2 = Colors.black38;
  String? curstatus;
  String? selectstatus;
  // ignore: body_might_complete_normally_nullable
  Color? checkstatus(String selectstatus) {
    if (selectstatus == 'PAID') {
      return Colors.green;
    } else if (selectstatus == 'COD') {
      return Colors.orange;
    } else if (selectstatus == 'CANCELLED') {
      return Colors.red;
    }
  }
  // ignore: body_might_complete_normally_nullable
  Color? checkcurStatus(String curstatus) {
    if (curstatus == 'Accepted') {
      return Colors.green;
    } else if (curstatus == 'Deliverd') {
      return const Color.fromRGBO(33, 150, 243, 1);
    } else if (curstatus == 'Rejected') {
      return Colors.red;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (cls == Colors.black38) {
                    cls = Colors.blue;
                  } else {
                    cls = Colors.black38;
                  }
                });
              },
              // ignore: sort_child_properties_last
              child: Text('Veg-food'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(cls),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (cls1 == Colors.black38) {
                    cls1 = Colors.blue;
                  } else {
                    cls1 = Colors.black38;
                  }
                });
              },
              // ignore: sort_child_properties_last
              child: Text('Non- veg-food'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(cls1),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (cls2 == Colors.black38) {
                    cls2 = Colors.blue;
                  } else {
                    cls2 = Colors.black38;
                  }
                });
              },
              // ignore: sort_child_properties_last
              child: Text('all'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(cls2),
              ),
            )
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 140,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Order ${orderlist[index].odnumber}',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(218, 103, 230, 109),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              height: 20,
                              width: 60,
                              child: Center(
                                  child: Text(
                                'NEW',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(orderlist[index].times)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              orderlist[index].imagepath,
                              fit: BoxFit.cover,
                            )),
                        title: Text('${orderlist[index].itemcount} ITEMS'),
                        subtitle: Text(
                          '${orderlist[index].rate}',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w600),
                        ),
                        trailing: Container(
                          decoration: BoxDecoration(
                              color: checkstatus(orderlist[index].status),
                              borderRadius: BorderRadius.circular(8)),
                          height: 20,
                          width: 80,
                          child: Center(
                            child: Text(
                              '${orderlist[index].status}',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ))
      ]),
    );
  }
}