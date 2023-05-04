import 'package:flutter/material.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    isScrollControlled: true,
                    isDismissible: false,
                    context: context,
                    builder: (context) => buildSheet(),
                  );
                },
                child: Text("Simple"))
          ],
        ),
      ),
    );
  }
}

Widget buildSheet() => ListView(
  children: [
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 5,
          width: 40,
          decoration: BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 0.9),
              borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: CustomText(
                  text: "Select Location",
                  color: const Color(0xFF292D32).withOpacity(0.9),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 25),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 0, left: 5, right: 8, bottom: 5),
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(41, 45, 50, 0.6), width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 3),
                          child: Icon(
                            Icons.map,
                            size: 20,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 4),
                          child: CustomText(
                            text: "pilih lewat peta",
                            color: const Color(0xFF292D32).withOpacity(0.9),
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
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
        SizedBox(
          height: 25,
        ),
        Container(
          height: 50,
          width: 360,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: Color.fromRGBO(41, 45, 50, 0.6)),
              borderRadius: BorderRadius.circular(25)),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'Search Location',
                    hintStyle: GoogleFonts.inter(
                        color: Colors.black87.withOpacity(0.3),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
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
                      Icons.gps_fixed,
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
                            "Current Location",
                            style: TextStyle(
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                fontSize: 14,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 1),
                          width: 250,
                          height: 23,
                          child: Text(
                            "Jl.Underworld no 666,  Jigoku, HSB",
                            style: TextStyle(
                                color: const Color(0xFF292D32).withOpacity(0.5),
                                fontSize: 10,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Container(
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
                      Icons.access_time_outlined,
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
                            "Smk Taruna Bhakti depok",
                            style: TextStyle(
                                color: const Color(0xFF292D32).withOpacity(0.9),
                                fontSize: 14,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 1),
                          width: 250,
                          height: 23,
                          child: Text(
                            "Jl.Gas Alam Blok SLTP Taruna Bhakti No.66",
                            style: TextStyle(
                                color: const Color(0xFF292D32).withOpacity(0.5),
                                fontSize: 10,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    )
  ],
);
