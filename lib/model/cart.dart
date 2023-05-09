class Cart {
  late String idm;
  late String title;
  late String sub;
  late String price;
  late int total;

  Cart(
      {required this.idm,
      required this.title,
      required this.sub,
      required this.price,
      required this.total});
}

List<Cart> Listcart = [
  Cart(
      idm: "assets/gyuu.png",
      title: "Rendang",
      sub: "Add : Cheese, Noodle",
      price: "\$50.00",
      total: 1),
  Cart(
      idm: "assets/ss.png",
      title: "Fried Chicken",
      sub: "Add : Cheese, Noodle",
      price: "\$50.00",
      total: 2),
];
