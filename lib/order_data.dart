class Orderdata {
  final String? odnumber;
  final String? times;
  final String? rate;
  final String? itemcount;
  final String? status;
  final String? curStatus;
  final String? imagepath;
  Orderdata(
      {required this.odnumber,
      required this.times,
      required this.rate,
      required this.itemcount,
      required this.status,
      required this.curStatus,
      required this.imagepath});
}

List orderlist = [
  Orderdata(
      odnumber: '235667',
      times: 'Today, 3.56 PM',
      rate: '2123',
      itemcount: '3',
      status: 'PAID',
      curStatus: 'Deliverd',
      imagepath: 'images/img12.jpg'),
  Orderdata(
      odnumber: '334668',
      times: 'Today, 4.56 PM',
      rate: '1423',
      itemcount: '4',
      status: 'COD',
      curStatus: 'Rejected',
      imagepath: 'images/img16.jpg'),
  Orderdata(
      odnumber: '246262',
      times: 'Today, 6.56 PM',
      rate: '3153',
      itemcount: '4',
      status: 'CANCELLED',
      curStatus: 'Accepted',
      imagepath: 'images/img3.jpg'),
  Orderdata(
      odnumber: '635678',
      times: 'Today, 9.56 PM',
      rate: '4123',
      itemcount: '6',
      status: 'PAID',
      curStatus: 'Accepted',
      imagepath: 'images/img4.jpg'),
  Orderdata(
      odnumber: '788362',
      times: '02/03/23, 7.56 PM',
      rate: '4123',
      itemcount: '4',
      status: 'COD',
      curStatus: 'Rejected',
      imagepath: 'images/img17.jpg'),
  Orderdata(
      odnumber: '188784',
      times: '03/02/23, 8.56 PM',
      rate: '1123',
      itemcount: '2',
      status: 'PAID',
      curStatus: 'Accepted',
      imagepath: 'images/img7.jpg'),
  Orderdata(
      odnumber: '288783',
      times: '03/02/23, 8.56 PM',
      rate: '1623',
      itemcount: '2',
      status: 'PAID',
      curStatus: 'Accepted',
      imagepath: 'images/img8.jpg'),
  Orderdata(
      odnumber: '188784',
      times: '04/02/23, 6.56 PM',
      rate: '1674',
      itemcount: '5',
      status: 'COD',
      curStatus: 'Deliverd',
      imagepath: 'images/img9.jpg'),
  Orderdata(
      odnumber: '688935',
      times: '04/02/23, 9.34 PM',
      rate: '1423',
      itemcount: '6',
      status: 'COD',
      curStatus: 'Accepted',
      imagepath: 'images/img10.jpg'),
  Orderdata(
      odnumber: '188784',
      times: '03/02/23, 8.56 PM',
      rate: '1253',
      itemcount: '2',
      status: 'PAID',
      curStatus: 'Accepted',
      imagepath: 'images/img11.jpg')
];