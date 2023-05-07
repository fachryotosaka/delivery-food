import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umkm/model/menu.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  Color _colorContainer = Colors.white;
  Color _colorText = const Color(0xFF292D32).withOpacity(0.9);
  final List<Widget> _pages = [];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0), // here the desired height
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 20)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CustomText(
                        text: "Current Location",
                        color: const Color(0xFF292D32).withOpacity(0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Icon(
                              Icons.location_on_rounded,
                              size: 14,
                              color: const Color(0xFF292D32).withOpacity(0.7),
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20))),
                                    isScrollControlled: true,
                                    isDismissible: false,
                                    context: context,
                                    builder: (context) => buildSheet(),
                                  );
                                },
                                child: Row(
                                  children: [
                                    CustomText(
                                      text:
                                          "Jl.Underworld no 666,  Jigoku, HSB",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    Icon(Icons.swap_vert)
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        FadeAnimation(
          delay: 0.4,
          child: Container(
            width: 200,
            height: 125,
            margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            padding: const EdgeInsets.fromLTRB(20, 13, 20, 15),
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9).withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: CustomText(
                        text: "Deals For days",
                        color: const Color(0xFF292D32).withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: CustomText(
                              text: "Get 0 delivery free on ",
                              color: const Color(0xFF292D32).withOpacity(0.6),
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            child: CustomText(
                              text: "your first order over 10 !",
                              color: const Color(0xFF292D32).withOpacity(0.6),
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 26,
                              width: 85,
                              padding: const EdgeInsets.fromLTRB(17, 6, 14, 6),
                              decoration: BoxDecoration(
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const CustomText(
                                text: "Order now",
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 145,
                  width: 130,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/mg.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        FadeAnimation(
          delay: 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 58,
                width: 365,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black26,
                        ),
                        suffixIcon: const Icon(
                          Icons.menu,
                          color: Colors.black26,
                        ),
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: 'Enter new task',
                        hintStyle: GoogleFonts.inter(
                            color: Colors.black87.withOpacity(0.3),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      style: GoogleFonts.inter(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        FadeAnimation(
            delay: 0.8,
            child: Container(
              padding: const EdgeInsets.fromLTRB(27, 30, 0, 25),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: CustomText(
                        text: "Food Menu",
                        color: const Color(0xFF292D32).withOpacity(0.9),
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]),
            )),
        FadeAnimation(
            delay: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(27, 0, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Latest",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _colorContainer = _colorContainer ==
                                const Color(0xFF292D32).withOpacity(0.9)
                            ? Colors.white
                            : const Color(0xFF292D32).withOpacity(0.9);

                        _colorText = _colorText == Colors.white
                            ? const Color(0xFF292D32).withOpacity(0.9)
                            : Colors.white;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                        color: _colorContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Food",
                          color: _colorText,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Drink",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Nearby",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            )),
        const SizedBox(height: 15),
        FadeAnimation(
          delay: 1.4,
          child: MasonryGridView.count(
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              itemCount: Listmenu.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87.withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 20)
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Listmenu[i].idm),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 18),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: CustomText(
                                      text: Listmenu[i].title,
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Container(
                                      margin: const EdgeInsets.only(left: 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.timelapse,
                                              color: const Color(0xFF292D32)
                                                  .withOpacity(0.5),
                                              size: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          CustomText(
                                            text: Listmenu[i].sub,
                                            color: const Color(0xFF292D32)
                                                .withOpacity(0.5),
                                            fontSize: 8,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ],
                                      )),
                                ]),
                          ),
                          const SizedBox(height: 25),
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: CustomText(
                                      text: Listmenu[i].price,
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 25),
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 2,
                                                    blurRadius: 40,
                                                    offset: const Offset(0,
                                                        2), // changes position of shadow
                                                  ),
                                                ],
                                                color: const Color(0xFF292D32)
                                                    .withOpacity(0.9),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ],
                                      )),
                                  const SizedBox(height: 5),
                                ],
                              )),
                        ]),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}

Widget buildSheet() => ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 5,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 0.9),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: CustomText(
                      text: "Select Location",
                      color: const Color(0xFF292D32).withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 0, left: 5, right: 8, bottom: 5),
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(41, 45, 50, 0.6),
                                width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 3),
                              child: Icon(
                                Icons.map,
                                size: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4, right: 4),
                              child: CustomText(
                                text: "pilih lewat peta",
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(41, 45, 50, 0.6)),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: 'Search Location',
                        hintStyle: GoogleFonts.inter(
                            color: Colors.black87.withOpacity(0.3),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 350,
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.gps_fixed,
                          size: 25,
                          color: const Color(0xFF292D32).withOpacity(0.9),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        width: 250,
                        height: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 14),
                              width: 250,
                              height: 35,
                              child: Text(
                                "Current Location",
                                style: TextStyle(
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.9),
                                    fontSize: 14,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 1),
                              width: 250,
                              height: 23,
                              child: Text(
                                "Jl.Underworld no 666,  Jigoku, HSB",
                                style: TextStyle(
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.5),
                                    fontSize: 10,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 350,
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.access_time_outlined,
                          size: 25,
                          color: const Color(0xFF292D32).withOpacity(0.9),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        width: 250,
                        height: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 14),
                              width: 250,
                              height: 35,
                              child: Text(
                                "Smk Taruna Bhakti depok",
                                style: TextStyle(
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.9),
                                    fontSize: 14,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 1),
                              width: 250,
                              height: 23,
                              child: Text(
                                "Jl.Gas Alam Blok SLTP Taruna Bhakti No.66",
                                style: TextStyle(
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.5),
                                    fontSize: 10,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
