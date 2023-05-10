import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Animation/fadeAnimation.dart';
import '../custom_text.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  int _selectedValue = 1;
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
                            text: "Personal data",
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
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/R.2d87da105d4f5c4df3f2fd6663f6f589?rik=0CmT81RcjN9v3A&riu=http%3a%2f%2f1.bp.blogspot.com%2f-waIAyE8m-q8%2fUeLBqUgP0yI%2fAAAAAAAAMpU%2f62UgFLKJ2KI%2fs1600%2fbm-image-708704.jpeg&ehk=a7TUDTEZ4Oan0p96JdWbmj%2bT04uZMgqpAQK94kICkDw%3d&risl=&pid=ImgRaw&r=0"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 133, left: 80),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 1,
                                offset: Offset(0, 4))
                          ],
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Icon(Icons.camera_alt_rounded),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Your Name",
                                color: Color.fromRGBO(43, 43, 43, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 47,
                          margin: EdgeInsets.only(left: 40, right: 40),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: "Lexa Otosaka",
                              color: Color.fromRGBO(41, 45, 50, 0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Email",
                                color: Color.fromRGBO(43, 43, 43, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 47,
                          margin: EdgeInsets.only(left: 40, right: 40),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: "fachrylord0@gmail.com",
                              color: Color.fromRGBO(41, 45, 50, 0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Phone Number",
                                color: Color.fromRGBO(43, 43, 43, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 47,
                          margin: EdgeInsets.only(left: 40, right: 40),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: "+81895351066695",
                              color: Color.fromRGBO(41, 45, 50, 0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Bio",
                                color: Color.fromRGBO(43, 43, 43, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 47,
                          margin: EdgeInsets.only(left: 40, right: 40),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: "some goodbyes set ur free",
                              color: Color.fromRGBO(41, 45, 50, 0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Gender",
                                color: Color.fromRGBO(43, 43, 43, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 47,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.9),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 47,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 0.9),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            )
                          ],
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
    );
  }
}
