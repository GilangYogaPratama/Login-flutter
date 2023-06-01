import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app_flutter/pages/home.dart';
import 'package:login_app_flutter/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordValController = TextEditingController();

  bool errorValidator = false;

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordValController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  "assets/signin_pic.jpg",
                  width: 350.0,
                  height: 350.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Daftar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Tuliskan Email",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Tuliskan Password",
                errorText: errorValidator ? "Password Tidak Sama" : null,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: passwordValController,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Konfirmasi Password",
                errorText: errorValidator ? "Password Tidak Sama" : null,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
                "Dengan mendaftar, anda menyetujui persyaratan & ketentuan yang berlaku serta peraturan privasi"),
            SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      passwordController.text == passwordValController.text
                          ? errorValidator = false
                          : errorValidator = true;
                    });
                    if (errorValidator) {
                      print("Error");
                    } else {
                      signUp();
                      Navigator.pop(context);
                    }
                  },
                  child: Text("Lanjutkan"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(
                        0xFF673AB7), // mengubah warna latar belakang button menjadi ungu
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun? ",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
