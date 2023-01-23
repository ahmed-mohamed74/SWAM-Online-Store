import 'package:flutter/material.dart';

List<Map> myUsers = [
  {'name': 'ali', 'email': 'ali@gmail.com', 'password': '159'},
  {'name': 'omar', 'email': 'o', 'password': '1'},
  {'name': 'ahmed', 'email': 'ahmed2058@gmail.com', 'password': '998'},
];
List mostPopular = [
  {
    'image': 'assets/images/a7.png',
    'name': 'G300s Wired ',
    'price': '352',
    'icon': Icons.electrical_services_outlined,
  },
  {
    'name': ' Pledge Fresh Tile Cleanser - 750 ml ',
    'price': '68.54',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/1.jpg'
  },
  {
    'name': 'Crew Neck Printed Long Sleeve Girl\'s Sweatshirt',
    'price': '149.000',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/1.webp'
  },
  {
    'name': 'xiaomi mi 10t,128Gb,8 GRAM',
    'price': '8,000',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/7.png'
  },
  {
    'name': '4 Levels Floor Shoe Rack, Silver/black - Wy-124',
    'price': '303.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/1.jpg'
  },
];
List productList = [
  {
    'image': 'assets/images/a7.png',
    'name': 'G300s Wired ',
    'price': '352',
    'icon': Icons.electrical_services_outlined,
  },
  {
    'image': 'assets/images/a8.png',
    'name': 'AirPods Max',
    'price': '549',
    'icon': Icons.electrical_services_outlined,
  },
  {
    'image': 'assets/images/a9.png',
    'name': 'Monitor',
    'price': '512',
    'icon': Icons.electrical_services_outlined,
  },
  {
    'image': 'assets/images/a10.png',
    'name': 'Keyboard',
    'price': '112',
    'icon': Icons.electrical_services_outlined,
  },
];
List<Map> grocery = [
  {
    'name': ' Pledge Fresh Tile Cleanser - 750 ml ',
    'price': '68.54',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/1.jpg'
  },
  {
    'name': ' Bisco Misr Luxe Biscuits with Oats - 12 Pcs ',
    'price': '4.00',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/2.jpg'
  },
  {
    'name': ' Mr. Food Golden Basmati Rice - 1 Kg ',
    'price': '42.00',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/3.jpg'
  },
  {
    'name': 'Almarai Skimmed Plastic Bottle Milk-1.5 L ',
    'price': '28.80',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/4.jpg'
  },
  {
    'name': 'Bonjorno 2in1 Coffee Mix Khamsina – 12 Sachet ',
    'price': '15.00',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/5.jpg'
  },
  {
    'name': 'Italiano Ziti Pasta - 400g ',
    'price': '9.950',
    'icon': Icons.shopping_basket,
    'image': 'assets/images/grocery/6.jpg'
  },
];
List<Map> home = [
  {
    'name': '4 Levels Floor Shoe Rack, Silver/black - Wy-124',
    'price': '303.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/1.jpg'
  },
  {
    'name': 'Cosmoplast 3 Tiers Storage Cabinet with Wheels, White Mix Drawers',
    'price': '700.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/2.jpg'
  },
  {
    'name': 'STEAK KNIVES SET 6PCS (4.5") - MASTER LINE',
    'price': '159.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/3.jpg'
  },
  {
    'name': 'Ariika Small Puff - Jeans, Blue',
    'price': '303.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/4.jpg'
  },
  {
    'name': ' El Maleka Primero Wealth Cooking Set 12 Pieces ',
    'price': '1699.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/5.jpg'
  },
  {
    'name': ' Kitchen Scale Kitchen Digital Scale 10 Kg - Whites ',
    'price': '79.00',
    'icon': Icons.home_outlined,
    'image': 'assets/images/home/6.jpg'
  },
];

List<Map> fashion = [
  {
    'name': 'Crew Neck Printed Long Sleeve Girl\'s Sweatshirt',
    'price': '149.00',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/1.webp'
  },
  {
    'name': 'Crew Neck Short Sleeve Printed Combed Cotton Men\'s T-Shirt',
    'price': '149.00',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/2.webp'
  },
  {
    'name': 'Sequin Embroidered Girl Cap Hat',
    'price': '149.00',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/3.webp'
  },
  {
    'name': 'Patterned Girl\'s Socks 5 Pack',
    'price': '149.00',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/4.webp'
  },
  {
    'name': 'Label Detailed Men\'s Tricot Beret',
    'price': '103.00',
    'icon': Icons.shopping_basket_outlined,
    'image': 'assets/images/fashion/5.webp'
  },
];

List<Map> Mobile = [
  {
    'name': 'Samsung Galaxy-A23,128GB ,4G RAM',
    'price': '5.8710',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/1.png'
  },
  {
    'name': 'Poco F3 ,128GB ,6G RAM',
    'price': '8.100',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/2.png'
  },
  {
    'name': 'iphone 13 pro,256GB ,4G RAM',
    'price': '15.600',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/3.png'
  },
  {
    'name': 'Realme c3,64GB ,4G RAM',
    'price': '3.000',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/4.png'
  },
  {
    'name': 'Hwaui y9,32GB ,4G RAM',
    'price': '2.500',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/5.png'
  },
  {
    'name': 'Samsung Z flip,256GB,8G RAm',
    'price': '24.300',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/6.png'
  },
  {
    'name': 'xiaomi mi 10t,128Gb,8 GRAM',
    'price': '8.000',
    'icon': Icons.phone_android,
    'image': 'assets/images/mobile/7.png'
  },
];
List<Map> fav = [];
List<Map> cart = [];
