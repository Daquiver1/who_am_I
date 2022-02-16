import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:who_am_i/services/auth_constants.dart';
import 'package:who_am_i/screens/home/home.dart';
import 'package:who_am_i/screens/authenticate/authenticate.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser; // This is auth in auth_constants

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    super.onReady();
    // auth is comning from the constants.dart file but it is basically FirebaseAuth.instance.
    // Since we have to use that many times I just made a constant file and declared there

    // Account of current user
    firebaseUser = Rx<User?>(auth.currentUser);
    // Account of current google user
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);

    // Auth.userchanges() is the login/logout state, when it changes the firebaseUser gets changed.
    firebaseUser.bindStream(auth.userChanges());
    // So with this wheneever the state of the user(firebaseUser) changes _setInitialScreen will be called
    ever(firebaseUser, _setInitialScreen);

    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(Register());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(MyHomePage());
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    print(googleSignInAccount);
    if (googleSignInAccount == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(Register());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(MyHomePage());
    }
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => print(onErr));
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      print(e.toString());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("User has been signed in");
    } catch (firebaseAuthException) {
      print(firebaseAuthException);
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {
      print(firebaseAuthException);
    }
  }

  void signOut() async {
    await auth.signOut();
  }
}
