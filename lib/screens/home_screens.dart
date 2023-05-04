import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/model/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  late String displayName = user!.displayName ?? '';
  late String image = user!.photoURL ?? '';

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1505935428862-770b6f24f629?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80',
                    width: double.infinity,
                    color: Colors.black54,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 65, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        delay: 0.4,
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(200),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1606542758304-820b04394ac2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45.withOpacity(0.7),
                                spreadRadius: 0.5,
                                blurRadius: 50,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ),
                      FadeAnimation(
                        delay: 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // width: double.maxFinite,
                              margin: const EdgeInsets.fromLTRB(13, 3, 20, 0),
                              child: CustomText(
                                text: displayName,
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(13, 0, 20, 0),
                              child: CustomText(
                                text: "Let's grab your food !!",
                                color: Colors.grey[400],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeAnimation(
                        delay: 0.4,
                        child: Container(
                          height: 45,
                          width: 45,
                          margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45.withOpacity(0.7),
                                spreadRadius: 0.3,
                                blurRadius: 50,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  delay: 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58,
                        width: 310,
                        margin: const EdgeInsets.fromLTRB(0, 135, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(200),
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
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 225, 0, 0),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              FadeAnimation(
                delay: 0.8,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(27, 22, 0, 0),
                  child: CustomText(
                    text: "Food Category",
                    color: const Color(0xFF292D32).withOpacity(0.9),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              FadeAnimation(
                delay: 0.8,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          FadeAnimation(
                              delay: 0.4,
                              child: Column(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 24, 0, 0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9)
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: const EdgeInsets.fromLTRB(
                                                9.5, 37.5, 0, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/hmb.png"),
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 4, 0, 0),
                                    child: CustomText(
                                      text: "Burger",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.6),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          FadeAnimation(
                              delay: 0.4,
                              child: Column(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 24, 0, 0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9)
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: const EdgeInsets.fromLTRB(
                                                9.5, 37.5, 0, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/slld.png"),
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 4, 0, 0),
                                    child: CustomText(
                                      text: "Sallad",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.6),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          FadeAnimation(
                              delay: 0.4,
                              child: Column(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 24, 0, 0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9)
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: const EdgeInsets.fromLTRB(
                                                9.5, 37.5, 0, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/ndl.png"),
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 4, 0, 0),
                                    child: CustomText(
                                      text: "Noddle",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.6),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          FadeAnimation(
                              delay: 0.4,
                              child: Column(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 24, 0, 0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9)
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: const EdgeInsets.fromLTRB(
                                                9.5, 37.5, 0, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/cke.png"),
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 4, 0, 0),
                                    child: CustomText(
                                      text: "Cake",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.6),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          FadeAnimation(
                              delay: 0.4,
                              child: Column(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        print("Tapped");
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 24, 0, 0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9)
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: const EdgeInsets.fromLTRB(
                                                9.5, 37.5, 0, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/drnk.png"),
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 4, 0, 0),
                                    child: CustomText(
                                      text: "Drink",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.6),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  height: 125,
                  margin: const EdgeInsets.fromLTRB(32, 22, 32, 0),
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
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.6),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "your first order over 10 !",
                                    color: const Color(0xFF292D32)
                                        .withOpacity(0.6),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(17, 6, 14, 6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
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
                        width: 35,
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
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 27, 0, 0),
                          child: CustomText(
                            text: "Food For You",
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 165),
                        GestureDetector(
                          onTap: () {},
                          child: Row(children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 22, 25, 0),
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.only(right: 2, top: 6),
                                    child: CustomText(
                                      text: "See more",
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 9),
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  delay: 1.4,
                  child: SizedBox(
                    height: 250,
                    width: 150,
                    child: ListView.builder(
                        // padding: const EdgeInsets.all(20),
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: Listmenu.length,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/detail');
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 0, 25),
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black87.withOpacity(0.1),
                                      offset: const Offset(0, 2),
                                      blurRadius: 25)
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                                margin: const EdgeInsets.only(
                                                    left: 0),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Icon(
                                                        Icons.timelapse,
                                                        color: const Color(
                                                                0xFF292D32)
                                                            .withOpacity(0.5),
                                                        size: 10,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 3,
                                                    ),
                                                    CustomText(
                                                      text: Listmenu[i].sub,
                                                      color: const Color(
                                                              0xFF292D32)
                                                          .withOpacity(0.5),
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ],
                                                )),
                                          ]),
                                    ),
                                    const SizedBox(height: 15),
                                    Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Row(
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
                                            const SizedBox(width: 19),
                                            GestureDetector(
                                                onTap: () {
                                                  print("Tapped");
                                                },
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(left: 21.5),
                                                        height: 30,
                                                        width: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 40,
                                                              offset: const Offset(
                                                                  0,
                                                                  2), // changes position of shadow
                                                            ),
                                                          ],
                                                          color: const Color(
                                                                  0xFF292D32)
                                                              .withOpacity(0.9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
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
                  )),
              const SizedBox(
                height: 50,
              ),
            ]),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: const Color(0xFF292D32).withOpacity(0.2),
      //         spreadRadius: 0.1,
      //         blurRadius: 60,
      //         offset: const Offset(0, -1), // changes position of shadow
      //       ),
      //     ],
      //   ),
      //   height: 80,
      //   child: BottomNavigationBar(
      //     showSelectedLabels: false, //selected item
      //     showUnselectedLabels: false,
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     unselectedItemColor: const Color(0xFF292D32).withOpacity(0.8),
      //     selectedItemColor: const Color(0xFF292D32).withOpacity(0.4),
      //     iconSize: 26,
      //     elevation: 0,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.wallet),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.card_travel),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.receipt_long),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: '',
      //       ),
      //     ],
      //   ),

      //   //New
      // ),
    );
  }
}
