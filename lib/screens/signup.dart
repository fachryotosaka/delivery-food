import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umkm/Animation/fadeAnimation.dart';
import 'package:umkm/custom_text.dart';
import 'package:umkm/service/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _imageController = TextEditingController(text: '');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  String _error = '';

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // Store additional user data here if needed, like username, etc.
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'User not found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Invalid password.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        default:
          errorMessage = 'An undefined error occurred.';
          break;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      setState(() {
        _isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        _isLoading = false;
      });

      String errorMessage;

      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'User not found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Invalid password.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        default:
          errorMessage = 'An undefined error occurred.';
          break;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  String error = '';
  String email = '';
  String password = '';
  String name = '';
  bool isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return isSignIn
        ? Scaffold(
            body: ListView(physics: BouncingScrollPhysics(), children: [
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
                  Form(
                    key: _formKey,
                    child: Column(
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
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 6, 20, 0),
                                    child: TextFormField(
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email address.';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        border: InputBorder.none,
                                        hintText: 'Email Address',
                                        hintStyle: GoogleFonts.inter(
                                            color:
                                                Colors.black87.withOpacity(0.3),
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
                                width: 350,
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 6, 20, 0),
                                    child: TextFormField(
                                      controller: _passwordController,
                                      obscureText: true,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password.';
                                        }
                                        return null;
                                      },
                                      obscuringCharacter: "*",
                                      decoration: InputDecoration(
                                        suffixIcon:
                                            const Icon(Icons.remove_red_eye),
                                        enabledBorder: InputBorder.none,
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: GoogleFonts.inter(
                                            color:
                                                Colors.black87.withOpacity(0.3),
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
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/resetpassword'),
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 21, 0),
                            child: CustomText(
                              text: "Forgot Password?",
                              color: const Color(0xFF292D32).withOpacity(0.7),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: _isLoading ? null : _submitForm,
                    child: _isLoading
                        ? CircularProgressIndicator()
                        : Container(
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
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSignIn = false;
                      });
                      ;
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                      child: CustomText(
                        text: "Didn't have account?",
                        color: const Color(0xFF292D32).withOpacity(0.7),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                              'Sign In with google ',
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
              ),
            ]),
          )
        : Scaffold(
            body: ListView(children: [
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
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
                                  text: "Sign Up Now",
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.9),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text:
                                      "please enter the details below continue.",
                                  color:
                                      const Color(0xFF292D32).withOpacity(0.7),
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
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 6, 20, 0),
                                        child: TextFormField(
                                          controller: _usernameController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your username.';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            border: InputBorder.none,
                                            hintText: 'Your Name',
                                            hintStyle: GoogleFonts.inter(
                                                color: Colors.black87
                                                    .withOpacity(0.3),
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
                                    width: 350,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 6, 20, 0),
                                        child: TextFormField(
                                          controller: _emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter an email address.';
                                            }
                                            if (!value.contains('@')) {
                                              return 'Please enter a valid email address.';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            border: InputBorder.none,
                                            hintText: 'Email Address',
                                            hintStyle: GoogleFonts.inter(
                                                color: Colors.black87
                                                    .withOpacity(0.3),
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
                                    width: 350,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 6, 20, 0),
                                        child: TextFormField(
                                          controller: _passwordController,
                                          obscureText: true,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your password.';
                                            }
                                            if (value.length < 6) {
                                              return 'The password must be at least 6 characters long.';
                                            }
                                            return null;
                                          },
                                          obscuringCharacter: "*",
                                          decoration: InputDecoration(
                                            suffixIcon: const Icon(
                                                Icons.remove_red_eye),
                                            enabledBorder: InputBorder.none,
                                            border: InputBorder.none,
                                            hintText: 'Password',
                                            hintStyle: GoogleFonts.inter(
                                                color: Colors.black87
                                                    .withOpacity(0.3),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          style: GoogleFonts.inter(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        child: CustomText(
                                          text: error,
                                          color: const Color(0xFF292D32)
                                              .withOpacity(0.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () async {
                            // Navigator.pushNamed(context, '/core');
                            await AuthService.signUp(
                                _usernameController.text,
                                _imageController.text,
                                _emailController.text,
                                _passwordController.text);
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
                                'Sign Up',
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignIn = true;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: CustomText(
                              text: "Already have account?",
                              color: const Color(0xFF292D32).withOpacity(0.7),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
                                    'Sign Up with google ',
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
                    ),
                  ),
                ],
              )
            ]),
          );
  }
}
