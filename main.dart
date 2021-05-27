import 'package:cabrider/dataprovider/appdata.dart';
import 'package:cabrider/globalvariable.dart';
import 'package:cabrider/screens/loginpage.dart';
import 'package:cabrider/screens/mainpage.dart';
import 'package:cabrider/screens/registrationpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS
        ? const FirebaseOptions(
      googleAppID: '1:47558547861:ios:c6de2b5846a5be8',
      gcmSenderID: 3585464061',
      databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
    )
        : const FirebaseOptions(
      googleAppID: '1:8547644947:android:ffa7325d01547s2a830526',
      apiKey: 'PLo96AD5Wtd7gnSCeRLcZ8mp66f7_iNwP4VdO5Q',
      databaseURL: 'https://geetaxi-efe9e-default-rtdb.firebaseio.com',
    ),
  );


  currentFirebaseUser = await FirebaseAuth.instance.currentUser();

  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> AppData(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Brand-Regular',
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: (currentFirebaseUser == null)? LoginPage.id: MainPage.id,
        routes: {
          RegistrationPage.id:(context)=>RegistrationPage(),
          LoginPage.id: (context)=> LoginPage(),
          MainPage.id:(context)=>MainPage()
        },
      ),
    );
  }
}

