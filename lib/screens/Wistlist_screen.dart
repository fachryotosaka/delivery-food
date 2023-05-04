import 'package:flutter/material.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umkm/model/Wistlist.dart';

class Wistlist extends StatefulWidget {
  const Wistlist({super.key});

  @override
  State<Wistlist> createState() => _WistlistState();
}

class _WistlistState extends State<Wistlist> {
  Color _colorContainer = Colors.white;
  Color _colorText = const Color(0xFF292D32).withOpacity(0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // here the desired height
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
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CustomText(
                            text: "Favorite",
                            color: const Color(0xFF292D32).withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 25, left: 20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 10)
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: const Color(0xFF292D32).withOpacity(0.9),
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
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
                            color: const Color(0xFF292D32).withOpacity(0.7),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
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
          FadeAnimation(
              delay: 0.8,
              child: Container(
                padding: const EdgeInsets.fromLTRB(27, 30, 0, 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: CustomText(
                          text: "700 product",
                          color: const Color(0xFF292D32).withOpacity(0.6),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
              )),
          FadeAnimation(
            delay: 1.4,
            child: MasonryGridView.count(
                physics: ScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
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
        ],
      ),
    );
  }
}
