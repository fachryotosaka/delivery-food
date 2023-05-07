import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int total = 1;
  int harga = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
          body: SingleChildScrollView(
            child: Column(
              // App bar
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.arrow_back_ios_outlined),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: const Icon(Icons.favorite_outline),
                        ),
                      ),
                    ],
                  ),
                ),
                // end app bar
                // Detail N Image
                SizedBox(
                  height: 276,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              )),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(0, 7),
                                blurRadius: 10),
                          ]),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/1999/1999722.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 16),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text(
                        "Gyudon Steak",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "MPLUS1p",
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(43, 43, 43, 0.9)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              // Time
                              Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                width: 90,
                                height: 50,
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.5),
                                      child: Icon(
                                        Icons.access_time_outlined,
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3),
                                      child: Text(
                                        "15 mins",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(43, 43, 43, 0.7),
                                            fontSize: 13,
                                            fontFamily: 'MPLUS1p',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // kalori
                              Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                width: 90,
                                height: 50,
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.5),
                                      child: Icon(
                                        Icons.bolt_outlined,
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3),
                                      child: Text(
                                        "500 kal",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(43, 43, 43, 0.7),
                                            fontSize: 13,
                                            fontFamily: 'MPLUS1p',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // star
                              Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  width: 150,
                                  height: 50,
                                  child: Center(
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(top: 1.5),
                                          child: Icon(
                                            Icons.star_border_outlined,
                                            color: Colors.amber,
                                            size: 18,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 3),
                                          child: Text(
                                            "4,9",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    43, 43, 43, 0.7),
                                                fontSize: 13,
                                                fontFamily: 'MPLUS1p',
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(" (1,700 Reviews)",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    43, 43, 43, 0.4),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        thickness: 1,
                        indent: 48,
                        endIndent: 48,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "\$50.00",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "MPLUS1p",
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(43, 43, 43, 0.9)),
                            ),
                            Container(
                              width: 110,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0, 2),
                                        blurRadius: 10)
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 22,
                                    width: 22,
                                    child: IconButton(
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
                                      padding: const EdgeInsets.only(
                                          left: 7, top: 5, right: 7),
                                      onPressed: () {
                                        setState(() {
                                          if (total > 1) {
                                            total--;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle_outlined,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 5, left: 11),
                                    height: 22,
                                    width: 40,
                                    child: Text(
                                      total.toString(),
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontFamily: "MPLUS1p",
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(43, 43, 43, 0.7)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 22,
                                    width: 22,
                                    child: IconButton(
                                      color: const Color(0xFF292D32)
                                          .withOpacity(0.9),
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      onPressed: () {
                                        setState(() {
                                          total++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add_circle_outlined,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 47,
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 48),
                            child: Text(
                              "About food",
                              style: TextStyle(
                                  color: Color.fromRGBO(43, 43, 43, 0.8),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            width: 320,
                            height: 175,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                              maxLines: 7,
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/cart');
                            },
                            child: Container(
                              height: 50,
                              width: 322,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(43, 43, 43, 0.9),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0, 2),
                                      blurRadius: 10)
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Add to order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
