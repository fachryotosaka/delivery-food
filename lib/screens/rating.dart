import 'package:flutter/material.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../custom_text.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
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
                            text: "Star",
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
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: CustomText(
                          text: "Madang",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 165,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: CustomText(
                          text: "11 Mar, 11:07 AM",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: CustomText(
                          text: "Sudah Sampai Tujuan ",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: CustomText(
                          text: "Pesanan RB-15124423",
                          color: const Color(0xFF292D32).withOpacity(0.9),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  child: CustomText(
                    text: "Kasih Rating Ke Resto ?",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 350,
                    height: 50,
                    child: Row(
                      children: [
                        FadeAnimation(
                          delay: 1.4,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1683220642973-a4d0ca134714?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8&auto=format&fit=crop&w=900&q=60"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1.4,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8, left: 10),
                                  height: 19,
                                  width: 250,
                                  child: CustomText(
                                    text: "Pecel Lele Mas Varel",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 20,
                                  width: 250,
                                  child: CustomText(
                                    text: "Jl.Underworld no 666,  Jigoku, HSB",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  child: Container(
                    width: 350,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/gyu.png"))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 25),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 25,
                                child: CustomText(
                                  text: "Gyudon Steak",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 25,
                                child: CustomText(
                                  text: "Jl.Underwolrd no 666, jigoku, hsb",
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45),
                          child: CustomText(
                            text: '\$50.00',
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  child: Container(
                    width: 350,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/gyu.png"))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 25),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 25,
                                child: CustomText(
                                  text: "Gyudon Steak",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 25,
                                child: CustomText(
                                  text: "Jl.Underwolrd no 666, jigoku, hsb",
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45),
                          child: CustomText(
                            text: '\$50.00',
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FadeAnimation(
                    delay: 1.4,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: CustomText(
                        text: "Detail pembayaran",
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(43, 43, 43, 0.5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CustomText(
                          text: 'Sub Total',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        child: CustomText(
                          text: '\$140.00',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CustomText(
                          text: 'Delivery fee',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        child: CustomText(
                          text: '\$5.00',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CustomText(
                          text: 'Delivery fee',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        child: CustomText(
                          text: '\$5.00',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CustomText(
                          text: 'Total',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        child: CustomText(
                          text: '\$5.00',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                delay: 1.4,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CustomText(
                          text: 'Pay with Mapay',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        child: CustomText(
                          text: '\$140.00',
                          color: const Color(0xFF292D32).withOpacity(1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
