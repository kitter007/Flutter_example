import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';
import 'package:myapp/main.dart'; // Import หน้า MyHomePage
// import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_usernameController.text == 'user' && _passwordController.text == 'password') {
      _usernameController.text = '';
      _passwordController.text = '';
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
      // Navigator.of(context).pushAndRemoveUntil(
      //   MaterialPageRoute(builder: (context) => const MyHomePage()),
      //   (route) => false,
      // );
      
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#001741"),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: Image.asset(
                    "assets/images/logo.png",
                    height: 200, width: 200,fit: BoxFit.cover,),
                  ),
                ],
              ),
            const SizedBox(height: 30),
            TextField(
              controller: _usernameController,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: const InputDecoration(
                label: Text("Username"),
                labelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 169, 169)),
                floatingLabelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 169, 169)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กำหนดกรอบสีขาว
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กรอบเมื่อไม่ได้โฟกัส
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กรอบเมื่อโฟกัส
                ),
                fillColor: Colors.white,
                filled: false, // ให้สีพื้นหลังเป็นสีขาว
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: const InputDecoration(
                label: Text("Password"),
                labelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 169, 169)),
                floatingLabelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 169, 169)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กำหนดกรอบสีขาว
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กรอบเมื่อไม่ได้โฟกัส
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 72, 237, 243)), // กรอบเมื่อโฟกัส
                ),
                fillColor: Colors.white,
                filled: false, // ให้สีพื้นหลังเป็นสีขาว
              ),
            ),
            const SizedBox(height: 32),
            Center(
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: HexColor("#03D9FF"), width: 3),backgroundColor: HexColor("#00317A")),
                      onPressed: _login,
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
              ),
          ],
        ),
      ),
    );
  }
}