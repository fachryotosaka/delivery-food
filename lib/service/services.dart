import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:umkm/screens/core.dart';
import 'package:umkm/screens/home_screens.dart';
import 'package:umkm/screens/signup.dart';

class SignOut {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  signOut() async {
    await _googleSignIn.signOut();
    await FirebaseAuth.instance.signOut();
  }
}

class AuthService {
  // handle auth state
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Core();
          } else {
            return const SignUp();
          }
        });
  }

  // sign in with google
  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // Sign up With Email & Password
  static Future<User?> signUp(
      String name, String image, String email, String password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? firebaseUser = result.user;
      // ignore: deprecated_member_use
      firebaseUser?.updateProfile(displayName: name, photoURL: image);
      return firebaseUser;
    } on FirebaseAuthException catch (e) {
      AlertDialog alert = AlertDialog(
        title: Text("Error :"),
        content: Text("${e.message}"),
      );
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  static Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password) as UserCredential;
      User? firebaseUser = result.user;
      return firebaseUser;
    } on FirebaseAuthException catch (e) {
      AlertDialog alert = AlertDialog(
        title: Text("Error :"),
        content: Text("${e.message.toString()}"),
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Determinate if the user is authenticate
}
