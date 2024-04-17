class products {
  final String? name;
  final String? unit;
  final String? rate;
  final String? stock;
  final String? imagesp;

  products(
      {required this.name,
      required this.unit,
      required this.rate,
      required this.stock,
      required this.imagesp});
}

List productlist = [
  products(
      name: 'choclate Candy',
      unit: '3',
      rate: '1256',
      stock: 'In Stock',
      imagesp: 'images/img12.jpg'),
  products(
      name: 'Double choclate frocen',
      unit: '12',
      rate: '250',
      stock: 'No Stock',
      imagesp: 'images/img16.jpg'),
  products(
      name: 'combo candy',
      unit: '5',
      rate: '1599',
      stock: 'In Stock',
      imagesp: 'images/img3.jpg'),
  products(
      name: 'chocos',
      unit: '4',
      rate: '1999',
      stock: 'In Stock',
      imagesp: 'images/img4.jpg'),
  products(
      name: 'Talunan',
      unit: '2',
      rate: '2099',
      stock: 'No Stock',
      imagesp: 'images/img17.jpg'),
  products(
      name: 'Dark Fantacy',
      unit: '7',
      rate: '2199',
      stock: 'In Stock',
      imagesp: 'images/img7.jpg'),
  products(
      name: 'choclate cake',
      unit: '3',
      rate: '1999',
      stock: 'In Stock',
      imagesp: 'images/img8.jpg'),
  products(
      name: 'choclate balls',
      unit: '4',
      rate: '2999',
      stock: 'In Stock',
      imagesp: 'images/img9.jpg'),
  products(
      name: 'Tocino',
      unit: '5',
      rate: '1988',
      stock: 'In Stock',
      imagesp: 'images/img10.jpg'),
  products(
      name: 'combo choclate',
      unit: '3',
      rate: '1499',
      stock: 'No Stock',
      imagesp: 'images/img11.jpg'),
];