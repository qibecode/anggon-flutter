import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/app_footer.dart';


class DataSekolah extends StatefulWidget {
  const DataSekolah({super.key});


  @override
  State<DataSekolah> createState() => _DataSekolahState();
}


class _DataSekolahState extends State<DataSekolah> {
  final TextEditingController npsnController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F3FA),


      appBar: AppBar(
        title: const Text(
          "Data Sekolah",
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
            _header(
              icon: Icons.school,
              title: "Data Sekolah",
              subtitle: "Silakan lengkapi data sekolah.",
            ),


            const SizedBox(height: 25),


            const Text(
              "Informasi Sekolah",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: npsnController,
              label: "NPSN",
              hint: "Masukkan NPSN",
              icon: Icons.badge_outlined,
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: namaController,
              label: "Nama Sekolah",
              hint: "Masukkan nama sekolah",
              icon: Icons.school_outlined,
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: alamatController,
              label: "Alamat",
              hint: "Masukkan alamat sekolah",
              icon: Icons.location_on_outlined,
              maxLines: 3,
            ),


            const SizedBox(height: 15),


            _buildTextField(
              controller: teleponController,
              label: "No. Telepon",
              hint: "Masukkan nomor telepon",
              icon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
            ),


            const SizedBox(height: 25),


            _button(
              text: "Simpan",
              icon: Icons.save,
              color: Colors.blue,
              onPressed: () {
                if (_isEmpty()) {
                  _showMessage("Semua data harus diisi!", Colors.red);
                  return;
                }


                _showMessage(
                  "Data sekolah berhasil disimpan!",
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


  Widget _header({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
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
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
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


  bool _isEmpty() {
    return npsnController.text.isEmpty ||
        namaController.text.isEmpty ||
        alamatController.text.isEmpty ||
        teleponController.text.isEmpty;
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
    npsnController.dispose();
    namaController.dispose();
    alamatController.dispose();
    teleponController.dispose();
    super.dispose();
  }
}
