import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umkm/model/category.dart';

import '../Animation/fadeAnimation.dart';
import '../custom_text.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Color _colorContainer = Colors.white;
  Color _colorText = const Color(0xFF292D32).withOpacity(0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 7,
                          offset: Offset(0, -2),
                          blurRadius: 7)
                    ]),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1596138641000-42fda7eeb97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(25, 38, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.arrow_back_ios_outlined),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FadeAnimation(
              delay: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27),
                      child: CustomText(
                        text: "Burger",
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
            FadeAnimation(
              delay: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27),
                      child: CustomText(
                          text: "for you if u like burger.",
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Color.fromRGBO(43, 43, 43, 0.7)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2), width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Icon(Icons.filter_alt)),
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
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2), width: 1),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Nearby",
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
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: CustomText(
                                  text: "Price",
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.9),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 105,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2), width: 1),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Rate 4.5+",
                              color: const Color(0xFF292D32).withOpacity(0.9),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            FadeAnimation(
              delay: 1.4,
              child: MasonryGridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: ListCategories.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
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
                                    image: AssetImage(ListCategories[i].idm),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.only(left: 18),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: CustomText(
                                          text: ListCategories[i].title,
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
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
                                                text: ListCategories[i].sub,
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
                                          text: ListCategories[i].price,
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
                                                    color:
                                                        const Color(0xFF292D32)
                                                            .withOpacity(0.9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
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
      ),
    );
  }
}
