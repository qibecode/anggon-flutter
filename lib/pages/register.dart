import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("FORM REGISTERASI"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          titleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          shadowColor: Colors.black,
          elevation: 10),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            child: const Center(
              child: Text("Isi Untuk Mendaftar",
                  style: TextStyle (
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold, fontSize: 25,)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Nama",
                    hintText: "Masukan Nama Lengkap",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Username",
                    hintText: "Masukan Username",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Jenis kelamin",
                    hintText: "Isikan jenis Kelamin ",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Telepon",
                    hintText: "Masukan No. Telepon",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Alamat",
                    hintText: "Masukan Alamat Lengkap",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide()),
                    labelText: "Password",
                    hintText: "Masukan Password",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: const Text(
                  "Registerasi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: const Text(
                  "Selesai",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
