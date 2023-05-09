class Menu {
  late String idm;
  late String title;
  late String sub;
  late String price;

  Menu(
      {required this.idm,
      required this.title,
      required this.sub,
      required this.price});
}

List<Menu> Listmenu = [
  Menu(
      idm: "assets/gyu2.png",
      title: "Rendang",
      sub: "15 mins - 500 kal",
      price: "\$50.00"),
  Menu(
      idm: "assets/ss.png",
      title: "Fried Chicken",
      sub: "15 mins - 5000 kal",
      price: "\$90.00"),
  Menu(
      idm: "assets/ri.png",
      title: "Ramen",
      sub: "15 mins - 500 kal",
      price: "\$30.00"),
];
