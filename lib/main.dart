import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:mySplashPage.idScreen,
      routes: {
        homePage.idScreen: (context) => homePage(),
      },

    );
  }
}
class mySplashPage extends StatefulWidget {
  static const String idScreen = "splashPage";

  const mySplashPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _mySplashPageState createState() => _mySplashPageState();
}

class _mySplashPageState extends State<mySplashPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: hexToColor("#121212"),
      body: Container(
        color: hexToColor('#121212'),
        alignment: Alignment.centerLeft,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Image.asset('assets/logo.png', width: 200, height: 200),
              const Text(
                "Electronic Bazar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: hexToColor("#1E847F"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: const Size(180, 40),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => homePage()
                    )
                    );
                    },
                  child: Text("Skip"),
              )
            ],
          ),
        ),
      ),
    );
  }

  //final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  /*void loginUser(BuildContext context) async{

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: emailMainController.text.trim(),
        password: passwordController.text.trim(),
      );

      final user = userCredential.user;
      if (user != null) {
        setState(() {
          // print("%%%%%%%%%%% ${user.uid}");
          userId = user.uid;
          Navigator.pushNamedAndRemoveUntil(context, MyHomePage.idScreen, (route) => false);

        });
      } else {
        setState(() {
          userId = 'User not found';
        });
      }
    } catch (e) {
      setState(() {
        userId = 'Error: $e';
      });
    }

    // print('%%%%%%%%%%% ${emailMainController.text}  %%%% ${passwordController.text} %%%%');
    //
    // final User? firebaseUser = (await _firebaseAuth
    //     .signInWithEmailAndPassword(
    //
    //     email: emailMainController.text.trim(),
    //     password: passwordController.text.trim()
    // ).catchError((errMsg){
    //   displayToastMessage("Error: "+errMsg.toString(), context);
    // })).user;
    //
    // if(firebaseUser!.uid != null  )
    // {
    //
    //   usersRef.child(firebaseUser.uid).once()
    //       .then((value) => (DataSnapshot snap){
    //         print("========= ${usersRef} ============");
    //     if(snap.value != null){
    //       Navigator.pushNamedAndRemoveUntil(context, MyHomePage.idScreen, (route) => false);
    //       displayToastMessage("you are logged in successfully", context);
    //     }
    //
    //     else{
    //       _firebaseAuth.signOut();
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         const SnackBar(content: Text("USER DOES NOT EXIST"),
    //           duration: Duration(seconds: 5),)
    //       );
    //       displayToastMessage("User does not exist. Please create new account.", context);
    //     }
    //   });
    //
    // }
    // else
    // {
    //   displayToastMessage("Error Occurred, can not be signed in", context);
    // }

  }*/

}
