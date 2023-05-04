import 'package:flutter/material.dart';
import 'package:umkm/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leadingWidth: 55,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(left: 15),
            child: Container(
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
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Ayasaka Yuu",
              color: const Color(0xFF292D32).withOpacity(0.9),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text: "+62891234569876",
              color: const Color(0xFF292D32).withOpacity(0.9),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // content
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/c6/28/3a/c6283a006b5530df27df8d125af18a34.jpg'),
                    fit: BoxFit.cover),
              ),
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            color: Color.fromRGBO(43, 43, 43, 0.9),
                          ),
                          padding: EdgeInsets.all(15),
                          child: CustomText(
                            text: "Kamu Kenapa?",
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomText(
                          text: "Seen",
                          color: Color.fromRGBO(41, 45, 50, 0.6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15),
                          child: CustomText(
                            text: "Gapapa",
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomText(
                          text: "01.30 PM",
                          color: Color.fromRGBO(41, 45, 50, 0.6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // bottom
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Stack(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 40,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                              color: const Color(0xFF292D32).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(50),
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
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: SizedBox(
                          width: 1,
                        ),
                        hintText: "Type a massage...",
                        hintStyle: GoogleFonts.inter(
                            color: Colors.black87.withOpacity(0.3),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(width: 5, color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        Icons.send,
                        color: Color.fromRGBO(43, 43, 43, 0.85),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
