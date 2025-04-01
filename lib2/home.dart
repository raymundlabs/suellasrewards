import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:suellas/profile_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
Future<UserCredential?> signInWithGoogle() async {
  try {
    // Create an instance of the firebase auth and google signin
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    // Create a new credentials
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // Sign in the user with the credentials
    UserCredential userCredential =
        await auth.signInWithCredential(credential);

    return userCredential; // Return the userCredential on success
  } catch (error) {
    print("Error signing in with Google: $error");
    return null; // Return null on failure
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Sign'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              await signInWithGoogle();
              if (mounted) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProfilePage(),),);
              }
            },
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Image.asset('assets/google.png'),
                // ),
                const Text(
                  'Continue with google',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],),
            ),
          ),
        ),
      ),
    );
  }
}
