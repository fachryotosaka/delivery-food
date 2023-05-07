import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Animation/fadeAnimation.dart';
import '../custom_text.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            text: "Inbox",
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
        children: [
          Column(
            children: [
              FadeAnimation(
                  delay: 0.6,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 350,
                        height: 85,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i0.wp.com/www.communicatoracademy.com/wp-content/uploads/2020/08/admin-ajax.png?w=317&ssl=1")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    width: 250,
                                    height: 20,
                                    child: Text(
                                      "Pesanan mu sudah di jalan !",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1),
                                    width: 250,
                                    height: 40,
                                    child: Text(
                                      "pesanan mu sudah di jalan , standby depan pintu , biar abang nya ga nunggu kelamaan h",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              FadeAnimation(
                delay: 0.6,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 1,
                  width: 350,
                  color: Colors.black54,
                ),
              ),
              FadeAnimation(
                  delay: 0.6,
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 350,
                        height: 85,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i0.wp.com/www.communicatoracademy.com/wp-content/uploads/2020/08/admin-ajax.png?w=317&ssl=1")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    width: 250,
                                    height: 20,
                                    child: Text(
                                      "Pesanan mu sudah di jalan !",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1),
                                    width: 250,
                                    height: 40,
                                    child: Text(
                                      "pesanan mu sudah di jalan , standby depan pintu , biar abang nya ga nunggu kelamaan h",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              FadeAnimation(
                delay: 0.6,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 1,
                  width: 350,
                  color: Colors.black54,
                ),
              ),
              FadeAnimation(
                  delay: 0.6,
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 350,
                        height: 85,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i0.wp.com/www.communicatoracademy.com/wp-content/uploads/2020/08/admin-ajax.png?w=317&ssl=1")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    width: 250,
                                    height: 20,
                                    child: Text(
                                      "Pesanan mu sudah di jalan !",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1),
                                    width: 250,
                                    height: 40,
                                    child: Text(
                                      "pesanan mu sudah di jalan , standby depan pintu , biar abang nya ga nunggu kelamaan h",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              FadeAnimation(
                delay: 0.6,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 1,
                  width: 350,
                  color: Colors.black54,
                ),
              ),
              FadeAnimation(
                  delay: 0.6,
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 350,
                        height: 85,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i0.wp.com/www.communicatoracademy.com/wp-content/uploads/2020/08/admin-ajax.png?w=317&ssl=1")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 250,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    width: 250,
                                    height: 20,
                                    child: Text(
                                      "Pesanan mu sudah di jalan !",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1),
                                    width: 250,
                                    height: 40,
                                    child: Text(
                                      "pesanan mu sudah di jalan , standby depan pintu , biar abang nya ga nunggu kelamaan h",
                                      style: TextStyle(
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 10,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              FadeAnimation(
                delay: 0.6,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 1,
                  width: 350,
                  color: Colors.black54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
