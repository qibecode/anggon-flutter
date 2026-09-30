import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/app_footer.dart';


class Siswa extends StatelessWidget {
  const Siswa({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DATA SISWA"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      bottomNavigationBar: const AppFooter(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),


            Container(
              child: const Center(
                child: Text(
                  "Data Siswa",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),


            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "NIS",
                      hintText: "Masukkan NIS",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama",
                      hintText: "Masukkan Nama",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tempat Lahir",
                      hintText: "Masukkan Tempat Lahir",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tanggal Lahir",
                      hintText: "Contoh : 23 November 2008",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Jenis Kelamin",
                      hintText: "Laki-laki / Perempuan",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Telepon",
                      hintText: "Masukkan Nomor Telepon",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Konsentrasi Keahlian",
                      hintText: "RPL",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Kelas",
                      hintText: "Contoh : XII RPL 1",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Usia",
                      hintText: "Masukkan Usia",
                    ),
                  ),


                  const SizedBox(height: 10),


                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Alamat",
                      hintText: "Masukkan Alamat",
                    ),
                  ),


                  const SizedBox(height: 25),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: const Size(150, 40),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/biodata");
                        },
                        child: const Text(
                          "Simpan",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          fixedSize: const Size(150, 40),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: const Text(
                          "Selesai",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                    ],
                  ),


                  const SizedBox(height: 20),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
