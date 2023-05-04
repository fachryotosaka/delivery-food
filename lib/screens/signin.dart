import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/service/services.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Container(
              height: 275,
              width: 230,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/signlogo.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    child: CustomText(
                      text: "Sign In Now",
                      color: const Color(0xFF292D32).withOpacity(0.9),
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    child: CustomText(
                      text: "please enter the details below continue.",
                      color: const Color(0xFF292D32).withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FadeAnimation(
                  delay: 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58,
                        width: 365,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: 'Enter new task',
                                hintStyle: GoogleFonts.inter(
                                    color: Colors.black87.withOpacity(0.3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              style: GoogleFonts.inter(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  delay: 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58,
                        width: 365,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: const Icon(Icons.remove_red_eye),
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: 'Enter new task',
                                hintStyle: GoogleFonts.inter(
                                    color: Colors.black87.withOpacity(0.3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              style: GoogleFonts.inter(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 21, 0),
                  child: CustomText(
                    text: "Forgot Password?",
                    color: const Color(0xFF292D32).withOpacity(0.7),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/core');
              },
              child: Container(
                height: 50,
                width: 350,
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
                    'Sign In',
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
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or")),
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => AuthService().signInWithGoogle(),
              child: Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          width: 1,
                          color: Colors.black,
                          style: BorderStyle.solid)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          child: Image(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP.1Nl9otEDi23qnVEQXPJuKQHaHa?pid=ImgDet&rs=1"))),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Sign in with google ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            )
          ],
        )
      ]),
    );
  }
}
