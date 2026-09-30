import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/app_footer.dart';


class Konsentrasi extends StatefulWidget {
  const Konsentrasi({super.key});


  @override
  State<Konsentrasi> createState() => _KonsentrasiState();
}


class _KonsentrasiState extends State<Konsentrasi> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController namaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F3FA),


      appBar: AppBar(
        title: const Text(
          "Konsentrasi Keahlian",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 8,
      ),
      bottomNavigationBar: const AppFooter(),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),


            const SizedBox(height: 25),


            const Text(
              "Informasi Konsentrasi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: idController,
              label: "ID Konsentrasi",
              hint: "Contoh: KK001",
              icon: Icons.numbers,
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: namaController,
              label: "Nama Konsentrasi",
              hint: "Contoh: Rekayasa Perangkat Lunak",
              icon: Icons.menu_book_outlined,
            ),


            const SizedBox(height: 25),


            _button(
              text: "Simpan",
              icon: Icons.save,
              color: Colors.blue,
              onPressed: () {
                if (idController.text.isEmpty ||
                    namaController.text.isEmpty) {
                  _showMessage(
                    "Semua data harus diisi!",
                    Colors.red,
                  );
                  return;
                }


                _showMessage(
                  "Data konsentrasi berhasil disimpan!",
                  Colors.green,
                );
              },
            ),


            const SizedBox(height: 12),


            _button(
              text: "Selesai",
              icon: Icons.check,
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
          ],
        ),
      ),
    );
  }


  Widget _header() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.orange,
            Color(0xFFFF9800),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.menu_book,
            color: Colors.white,
            size: 45,
          ),
          SizedBox(height: 10),
          Text(
            "Konsentrasi Keahlian",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Tambahkan data konsentrasi keahlian.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: Colors.orange,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.orange,
            width: 2,
          ),
        ),
      ),
    );
  }


  Widget _button({
    required String text,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: Icon(icon),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }


  void _showMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }


  @override
  void dispose() {
    idController.dispose();
    namaController.dispose();
    super.dispose();
  }
}
