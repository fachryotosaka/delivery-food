class Order {
  late String idm;
  late String title;
  late String sub;

  Order({required this.idm, required this.title, required this.sub});
}

List<Order> Listorder = [
  Order(
    idm: "assets/gyuu.png",
    title: "Rendang",
    sub: "Add : Cheese, Noodle",
  ),
  Order(
    idm: "assets/ss.png",
    title: "Fried Chicken",
    sub: "Add : Cheese, Noodle",
  ),
  Order(
    idm: "assets/ri.png",
    title: "Ramen Ichiraku",
    sub: "Add : Cheese, Noodle",
  ),
];
