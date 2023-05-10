import 'package:flutter/material.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/model/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int total = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
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
                            text: "My Carts",
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
      body: ListView(children: [
        const SizedBox(
          height: 40,
        ),
        // Container(
        //   padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        //   child: Column(children: const []),
        // ),
        FadeAnimation(
          delay: 0.4,
          child: Container(
            height: 320,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 135,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          Container(
                            height: 95,
                            width: 95,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Listcart[i].idm),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 18),
                              Container(
                                margin: const EdgeInsets.only(left: 18),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: CustomText(
                                          text: Listcart[i].title,
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.9),
                                          fontSize: 16,
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
                                                text: Listcart[i].sub,
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
                                  children: [
                                    Container(
                                      child: CustomText(
                                        text: Listcart[i].price,
                                        color: const Color(0xFF292D32)
                                            .withOpacity(0.9),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(width: 60),
                                    Container(
                                      width: 85,
                                      height: 30,
                                      margin: const EdgeInsets.only(top: 2.5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                offset: const Offset(0, 2),
                                                blurRadius: 10)
                                          ]),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: IconButton(
                                              iconSize: 20,
                                              color: const Color(0xFF292D32)
                                                  .withOpacity(0.9),
                                              padding: const EdgeInsets.only(
                                                  left: 7, top: 5, right: 0),
                                              onPressed: () {
                                                setState(() {
                                                  if (Listcart[i].total > 1) {
                                                    Listcart[i].total--;
                                                  }
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.remove_circle_outlined,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 7, left: 6),
                                            height: 22,
                                            width: 30,
                                            child: Text(
                                              Listcart[i].total.toString(),
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "MPLUS1p",
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      43, 43, 43, 0.7)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: IconButton(
                                              iconSize: 20,
                                              color: const Color(0xFF292D32)
                                                  .withOpacity(0.9),
                                              padding: const EdgeInsets.only(
                                                  left: 0, top: 5, right: 5),
                                              onPressed: () {
                                                setState(() {
                                                  Listcart[i].total++;
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Container(
            height: 155,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(19, 25, 19, 20),
              child: Column(
                children: [
                  Container(
                    child: Stack(children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: CustomText(
                                text: 'Sub total',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: '\$140.00',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    child: Stack(children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: CustomText(
                                text: 'Delivery fee',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: '\$5.00',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    child: Stack(children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: CustomText(
                                text: 'Delivery fee',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: '\$5.00',
                                color: const Color(0xFF292D32).withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    child: const Divider(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    child: Stack(children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: CustomText(
                                text: 'Total',
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: '\$160.00',
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(19, 15, 19, 15),
              child: Stack(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CustomText(
                            text: 'Your delivery address',
                            color: const Color(0xFF292D32).withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Icon(
                                  Icons.location_on_rounded,
                                  size: 15,
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.5),
                                )),
                                // const SizedBox(width: 10),
                                // Container(
                                //   child: CustomText(
                                //     text: 'Jl.Underworld no 666,  Jigoku, HSB',
                                //     color: const Color(0xFF292D32)
                                //         .withOpacity(0.8),
                                //     fontSize: 13,
                                //     fontWeight: FontWeight.w700,
                                //   ),
                                // ),
                                // const SizedBox(width: 45),
                                // Container(
                                //     child: Icon(
                                //   Icons.arrow_forward_ios_sharp,
                                //   size: 15,
                                //   color:
                                //       const Color(0xFF292D32).withOpacity(0.9),
                                // )),
                              ]),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          child: const Divider(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Container(
                          child: CustomText(
                            text: 'Payment',
                            color: const Color(0xFF292D32).withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    child: Icon(
                                  Icons.wallet,
                                  size: 15,
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.5),
                                )),
                                const SizedBox(width: 10),
                              ]),
                        ),
                      ]),
                  GestureDetector(
                    onTap: () {
                      print("Payment");
                    },
                    child: Container(
                      width: 500,
                      margin: const EdgeInsets.only(top: 89.5, left: 37),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: CustomText(
                              text: 'Cash',
                              color: const Color(0xFF292D32).withOpacity(0.8),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // const SizedBox(width: 258.5),
                          Container(
                              child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                            color: const Color(0xFF292D32).withOpacity(0.9),
                          )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Address");
                    },
                    child: Container(
                      width: 500,
                      margin: const EdgeInsets.only(top: 21, left: 37),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: CustomText(
                              text: 'Jl.Underworld no 666,  Jigoku, HSB',
                              color: const Color(0xFF292D32).withOpacity(0.8),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // const SizedBox(width: 258.5),
                          Container(
                              child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                            color: const Color(0xFF292D32).withOpacity(0.9),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/delivery');
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
                  'Place to order',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
