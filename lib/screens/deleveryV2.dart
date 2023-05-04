import 'package:flutter/material.dart';

class Deleverry extends StatefulWidget {
  const Deleverry({super.key});

  @override
  State<Deleverry> createState() => _DeleverryState();
}

class _DeleverryState extends State<Deleverry> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/map.jpeg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 3),
                                  blurRadius: 4)
                            ]),
                        child: const Icon(Icons.arrow_back_ios_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 3),
                                  blurRadius: 4)
                            ]),
                        child: const Icon(Icons.gps_fixed_outlined),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 230,
                color: const Color.fromRGBO(43, 43, 43, 1),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30, left: 5, right: 5),
                      width: 350,
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5, top: 5),
                            width: 55,
                            height: 55,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.az15hEnTUBI5kMEkA0OAQQHaJx?pid=ImgDet&rs=1"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            width: 120,
                            height: 70,
                            child: Column(children: [
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                width: 150,
                                height: 20,
                                child: const Text(
                                  "Ayasaka yuu",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5, left: 1),
                                width: 150,
                                height: 20,
                                child: const Text(
                                  "Delevery person",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ]),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/chat');
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 6, left: 17),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromRGBO(70, 71, 71, 0.9),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        offset: const Offset(0, 3),
                                        blurRadius: 4)
                                  ]),
                              child: const Icon(
                                Icons.chat_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(top: 6, left: 10),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromRGBO(70, 71, 71, 0.9),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        offset: const Offset(0, 3),
                                        blurRadius: 4)
                                  ]),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Color.fromRGBO(255, 255, 255, 0.15),
                      thickness: 1,
                      indent: 48,
                      endIndent: 48,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1, left: 5, right: 5),
                      width: 350,
                      height: 80,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.1),
                                      offset: const Offset(0, 3),
                                      blurRadius: 4)
                                ]),
                            child: const Icon(
                              Icons.motorcycle_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 200,
                            height: 70,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 13),
                                  width: 400,
                                  height: 20,
                                  child: const Text(
                                    "On The Way | 5 min",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 0),
                                  width: 200,
                                  height: 20,
                                  child: const Text(
                                    "Jl.Underworld no 666,  Jigoku, HSB",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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
      ),
    );
  }
}
