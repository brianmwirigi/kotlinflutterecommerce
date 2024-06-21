import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotlinflutterecommerce/views/screens/authenticationscreens/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: 'kotlinflutterecommerce',
      options: Platform.isAndroid
          ? const FirebaseOptions(
              apiKey: 'AIzaSyDFK4OoqY00NJhe4sm6aLJ57YUTnRWNYMI',
              appId: '1:129920843449:android:11e8968ebfbb3c17f42568',
              messagingSenderId: '129920843449',
              projectId: 'kotlinflutterecommerce',
              storageBucket: 'gs://kotlinflutterecommerce.appspot.com',
            )
          : null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
