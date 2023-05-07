import 'package:flutter/material.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/model/orders.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  Color _colorContainer = Colors.white;
  Color _colorText = const Color(0xFF292D32).withOpacity(0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            text: "Orders",
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
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          FadeAnimation(
            delay: 0.4,
            child: Container(
              margin: const EdgeInsets.fromLTRB(25, 30, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: CustomText(
                      text: "Your Orders",
                      color: const Color(0xFF292D32).withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    child: CustomText(
                      text: "please monitor your order !",
                      color: const Color(0xFF292D32).withOpacity(0.7),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeAnimation(
              delay: 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "History",
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _colorContainer = _colorContainer ==
                                  const Color(0xFF292D32).withOpacity(0.9)
                              ? Colors.white
                              : const Color(0xFF292D32).withOpacity(0.9);

                          _colorText = _colorText == Colors.white
                              ? const Color(0xFF292D32).withOpacity(0.9)
                              : Colors.white;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: _colorContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "Process",
                            color: _colorText,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "Scheduled",
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 20),
          FadeAnimation(
            delay: 1.6,
            child: Container(
              height: 900,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: Listorder.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87.withOpacity(0.2),
                                  offset: const Offset(0, 2),
                                  blurRadius: 20)
                            ],
                          ),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(Listorder[i].idm),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    Container(
                                      // margin: const EdgeInsets.only(left: 20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: CustomText(
                                                text: Listorder[i].title,
                                                color: const Color(0xFF292D32)
                                                    .withOpacity(0.9),
                                                fontSize: 16,
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
                                                      text: Listorder[i].sub,
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
                                    const SizedBox(height: 25),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/rating');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFF005C),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black87.withOpacity(0.3),
                                            offset: const Offset(0, 2),
                                            blurRadius: 20)
                                      ],
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 18, top: 5),
                                      child: const CustomText(
                                        text: "Cancel",
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
