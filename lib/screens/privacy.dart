import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:umkm/Animation/fadeAnimation.dart';

import '../custom_text.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
                            text: "Privacy And Security",
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
                  width: 35,
                  height: 35,
                  margin: const EdgeInsets.only(top: 30, left: 20),
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            FadeAnimation(
              delay: 1,
              child: Container(
                  height: 290,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CustomText(
                                  text: "Privacy",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromRGBO(43, 43, 43, 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 25, right: 25),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Blocked User",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "5",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Phone Number",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "My contacts",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Last seen & online",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "Nobody",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Profile Photos",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "Everybody",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Calls",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "Everybody",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            FadeAnimation(
              delay: 1,
              child: Container(
                height: 10,
                width: double.infinity,
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
            ),
            FadeAnimation(
              delay: 1,
              child: Container(
                  height: 185,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CustomText(
                                  text: "Security ",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromRGBO(43, 43, 43, 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 25, right: 25),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Passcode Lock",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Two step verification",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "off",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 25, top: 0),
                            height: 1,
                            width: double.infinity,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 5),
                            height: 45,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "Devices",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            FadeAnimation(
              delay: 1,
              child: Container(
                height: 10,
                width: double.infinity,
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
            ),
            FadeAnimation(
              delay: 1,
              child: Expanded(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CustomText(
                                  text: "Delete my account ",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromRGBO(43, 43, 43, 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 25, right: 25, top: 0),
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: CustomText(
                                    text: "If away for",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  child: CustomText(
                                    text: "6 month",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(160, 145, 145, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
