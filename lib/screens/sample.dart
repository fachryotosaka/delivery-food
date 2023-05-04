//  FadeAnimation(
//             delay: 1.4,
//             child: Container(
//               height: double.infinity,
//               width: 600,
//               padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
//               child: ListView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   itemCount: 1,
//                   itemBuilder: (context, i) {
//                     return Container(
//                       margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                       child: Container(
//                           height: 85,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black87.withOpacity(0.2),
//                                   offset: const Offset(0, 2),
//                                   blurRadius: 20)
//                             ],
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 // const SizedBox(width: 20),
//                                 Container(
//                                   height: 55,
//                                   width: 55,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage("assets/gyuu.png"),
//                                       fit: BoxFit.fitWidth,
//                                     ),
//                                   ),
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     const SizedBox(height: 20),
//                                     Container(
//                                       margin: const EdgeInsets.only(left: 25),
//                                       child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               child: CustomText(
//                                                 text: "test",
//                                                 color: const Color(0xFF292D32)
//                                                     .withOpacity(0.9),
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.w800,
//                                               ),
//                                             ),
//                                             const SizedBox(height: 2),
//                                             Container(
//                                                 margin: const EdgeInsets.only(
//                                                     left: 0),
//                                                 child: Row(
//                                                   children: [
//                                                     CustomText(
//                                                       text: "test",
//                                                       color: const Color(
//                                                               0xFF292D32)
//                                                           .withOpacity(0.5),
//                                                       fontSize: 8,
//                                                       fontWeight:
//                                                           FontWeight.w700,
//                                                     ),
//                                                   ],
//                                                 )),
//                                           ]),
//                                     ),
//                                     const SizedBox(height: 25),
//                                   ],
//                                 ),
//                                 // const SizedBox(width: 10),
//                                 GestureDetector(
//                                   onTap: () {},
//                                   child: Container(
//                                     height: 30,
//                                     width: 75,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xFFFF005C),
//                                       borderRadius: BorderRadius.circular(15),
//                                       boxShadow: [
//                                         BoxShadow(
//                                             color:
//                                                 Colors.black87.withOpacity(0.3),
//                                             offset: const Offset(0, 2),
//                                             blurRadius: 20)
//                                       ],
//                                     ),
//                                     child: Container(
//                                       margin: const EdgeInsets.only(
//                                           left: 18, top: 5),
//                                       child: const CustomText(
//                                         text: "Cancel",
//                                         color: Colors.white,
//                                         fontSize: 11,
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     );
//                   }),
//             ),
//           ),