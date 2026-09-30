import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/app_footer.dart';


class Beranda extends StatelessWidget {
  const Beranda({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F3FA),


      appBar: AppBar(
        title: const Text("Halaman Beranda"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        elevation: 8,
        shadowColor: Colors.black45,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: const AppFooter(showLogout: true),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),


        child: Column(
          children: [


            const SizedBox(height: 25),


            // =========================
            // ICON SEKOLAH
            // =========================
            Container(
              width: 90,
              height: 90,


              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.15),
                shape: BoxShape.circle,
              ),


              child: const Icon(
                Icons.school,
                size: 50,
                color: Colors.orange,
              ),
            ),


            const SizedBox(height: 18),


            const Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),


            const SizedBox(height: 6),


            Text(
              "Sistem Informasi Sekolah",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),


            const SizedBox(height: 35),


            // =========================
            // DATA SEKOLAH
            // =========================
            _menuCard(
              context: context,
              icon: Icons.business_outlined,
              title: "Data Sekolah",
              subtitle: "Informasi data sekolah",
              color: Colors.orange,
              route: "/data_sekolah",
            ),


            const SizedBox(height: 15),


            // =========================
            // KONSENTRASI KEAHLIAN
            // =========================
            _menuCard(
              context: context,
              icon: Icons.menu_book_outlined,
              title: "Konsentrasi Keahlian",
              subtitle: "Data konsentrasi keahlian",
              color: Colors.green,
              route: "/konsentrasi",
            ),


            const SizedBox(height: 15),


            // =========================
            // BIODATA
            // =========================
            _menuCard(
              context: context,
              icon: Icons.person_outline,
              title: "Biodata",
              subtitle: "Data biodata",
              color: Colors.blue,
              route: "/biodata",
            ),


            const SizedBox(height: 15),


            // =========================
            // SISWA
            // =========================
            _menuCard(
              context: context,
              icon: Icons.groups_outlined,
              title: "Siswa",
              subtitle: "Data siswa",
              color: Colors.purple,
              route: "/siswa",
            ),


            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }


  // =====================================================
  // MENU CARD
  // =====================================================
  static Widget _menuCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required String route,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),


      elevation: 2,


      child: InkWell(
        borderRadius: BorderRadius.circular(18),


        onTap: () {
          Navigator.pushNamed(context, route);
        },


        child: Container(
          padding: const EdgeInsets.all(16),


          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),


          child: Row(
            children: [


              // ICON
              Container(
                width: 55,
                height: 55,


                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(15),
                ),


                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ),


              const SizedBox(width: 15),


              // TEXT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),


                    const SizedBox(height: 4),


                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),


              // ARROW
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
