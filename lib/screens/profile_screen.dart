import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/service/services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  late String displayName = user!.displayName ?? '';
  late String displayEmail = user!.email ?? '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: CustomText(
                              text: "Profile",
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
                // InkWell(
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(10),
                //     margin: const EdgeInsets.only(top: 25, left: 20),
                //     decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Colors.white,
                //       boxShadow: [
                //         BoxShadow(
                //             color: Colors.black26,
                //             offset: Offset(0, 2),
                //             blurRadius: 10)
                //       ],
                //     ),
                //     child: Icon(
                //       Icons.arrow_back_ios_outlined,
                //       color: const Color(0xFF292D32).withOpacity(0.9),
                //       size: 20,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                FadeAnimation(
                  delay: 0.4,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "profilesetup");
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                      width: 330,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87.withOpacity(0.1),
                              offset: const Offset(0, 2),
                              blurRadius: 20)
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            width: 300,
                            height: 60,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 2),
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1505935428862-770b6f24f629?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80"),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0), blurRadius: 2)
                                      ]),
                                ),
                                Container(
                                  width: 160,
                                  margin:
                                      const EdgeInsets.only(left: 15, top: 0),
                                  height: double.infinity,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        width: double.maxFinite,
                                        height: 20,
                                        child: Text(
                                          '${displayName}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 2),
                                        width: double.maxFinite,
                                        height: 15,
                                        child: Text(
                                          '${displayEmail}',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(41, 45, 50, 0.6),
                                            fontSize: 10,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 0),
                                        width: double.maxFinite,
                                        height: 10,
                                        child: const Text(
                                          "+62895351066695",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(41, 45, 50, 0.6),
                                            fontSize: 10,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 5),
                                  padding: const EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  child: InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                      width: double.maxFinite,
                                      height: double.maxFinite,
                                      child: Icon(
                                        Icons.edit_outlined,
                                        size: 25,
                                        color: const Color(0xFF292D32)
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Key
                FadeAnimation(
                  delay: 0.6,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'notifseting');
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.key_outlined,
                                  size: 25,
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.9),
                                )),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    width: 250,
                                    height: 25,
                                    child: Text(
                                      "Account",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    width: 250,
                                    height: 25,
                                    child: Text(
                                      "Security, notifications, change number ",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Theme

                FadeAnimation(
                  delay: 0.8,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
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
                                Icons.wb_sunny,
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
                                      "Theme",
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
                                    height: 25,
                                    child: Text(
                                      "Dark mode, Light mode",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Privacy

                FadeAnimation(
                  delay: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
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
                                Icons.lock,
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
                                      "Privacy",
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
                                    height: 25,
                                    child: Text(
                                      "Wallet, Blacklist, Fingerprint",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // whistlist
                FadeAnimation(
                  delay: 1.4,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/Wistlist');
                      },
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Icon(
                                Icons.favorite_outline,
                                size: 25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    width: 250,
                                    height: 25,
                                    child: const Text(
                                      "Whistlist",
                                      style: TextStyle(
                                          color: Color.fromRGBO(41, 45, 50, 1),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    width: 250,
                                    height: 25,
                                    child: Text(
                                      "Liked product",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Shop

                FadeAnimation(
                  delay: 1.6,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
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
                                Icons.shopping_cart,
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
                                      "Shop",
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
                                    height: 25,
                                    child: Text(
                                      "Your Shop",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Bahasa

                FadeAnimation(
                  delay: 1.8,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
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
                                Icons.language,
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
                                      "Language",
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
                                    height: 25,
                                    child: Text(
                                      "Leanguage",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Log out

                FadeAnimation(
                  delay: 2.0,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Logout'),
                            content: const Text('Are Your Sure ?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  SignOut().signOut();

                                  Navigator.pop(context, 'OK');
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.logout,
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
                                      "Log Out",
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
                                    height: 25,
                                    child: Text(
                                      "Log Out",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.5),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
