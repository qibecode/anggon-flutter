import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Image.asset("images/logo.png"),
            ),
          ),
          Container(
            child: const Center(
              child: Text(" Welcome to",
                  style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            child: const Center(
                child: Text(" SMK Negeri 2 Kraksaan",
                    style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold))),
          ),
          const SizedBox(height: 40),
          Container(
            child: const Center(child: Text(" Please Log In to continue")),
          ),

          // Input username
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), borderSide: const BorderSide()),
                    labelText: "Username",
                    hintText: "Masukan username",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), borderSide: const BorderSide()),
                    labelText: "Password",
                    hintText: "Masukan Password",
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, fixedSize: const Size(200, 50)),
            onPressed: () {
              Navigator.pushNamed(context, "/beranda");
            },
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/register");
            },
            child: const Text(
              "Daftar Disini",
              style: TextStyle(color: Color.fromARGB(255, 9, 5, 238)),
            ),
          )
        ],
      ),
    );
  }
}
