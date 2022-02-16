import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:who_am_i/services/auth_controller.dart';

// Authcontroller file
AuthController authController = AuthController.instance;

// Firebase init
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
// Authentication init
FirebaseAuth auth = FirebaseAuth.instance;
// Firestore init
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
// Google sign in init
GoogleSignIn googleSign = GoogleSignIn();
