import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jiji_safi/firebase_options.dart';
import 'package:jiji_safi/screens/dashboard_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(JijiSafiApp());
}
class JijiSafiApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jiji Safi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[100],
      ),
      home: DashboardScreen(),
    
    );
  }
}

