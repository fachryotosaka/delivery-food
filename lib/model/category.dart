class Categories{
    late String idm;
    late String title;
    late String sub;
   late String price;

  Categories(
      {required this.idm,
      required this.title,
      required this.sub,
      required this.price});
}
List<Categories> ListCategories = [
  Categories(
      idm: "assets/gyu2.png",
      title: "Rendang",
      sub: "15 mins - 500 kal",
      price: "\$50.00"),
  Categories(
      idm: "assets/ss.png",
      title: "Fried Chicken ",
      sub: "15 mins - 5000 kal",
      price: "\$90.00"),
  Categories(
      idm: "assets/ri.png",
      title: "Ramen",
      sub: "15 mins - 500 kal",
      price: "\$30.00"),
];