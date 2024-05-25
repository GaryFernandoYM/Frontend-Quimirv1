
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:frontend_quimir/drawer/home_drawer.dart';
import 'package:frontend_quimir/drawer/navigation_home_screen.dart';
import 'package:frontend_quimir/login/login_google.dart';
import 'package:frontend_quimir/theme/AppTheme.dart';
import 'firebase_options.dart';

bool shouldUseFirestoreEmulator = false;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UPeU",
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: NavigationHomeScreen(), // Cambiar MainLogin() por el nombre de tu primera pantalla
    );
  }
}

