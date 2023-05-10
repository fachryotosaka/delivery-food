import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/service/services.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordController = TextEditingController(text: '');

  @override
  void dispose() {
    ResetPasswordController.dispose();
    super.dispose();
  }

  Future PasswordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: ResetPasswordController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content:
                  Text("Password reset link sent !, please check your email."),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

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
                      text: "Reset Password ",
                      color: const Color(0xFF292D32).withOpacity(0.9),
                      fontSize: 30,
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
                        width: 350,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
                            child: TextFormField(
                              controller: ResetPasswordController,
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
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () => PasswordReset(),
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
                    'Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        )
      ]),
    );
  }
}
