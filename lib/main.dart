import 'package:flutter/material.dart';
import 'package:login_app_flutter/home.dart';
import 'package:login_app_flutter/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  StreamBuilder<User?>(
        stream: FirebaseAuth.instance.userChanges(),
        builder: (context,  snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}