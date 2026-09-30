import "package:flutter/material.dart";
import "package:flutter_app3/widgets/app_footer.dart";

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  static const List<String> _fotoBaris1 = [
    "images/cantik1.jpg",
    "images/cantik2.jpg",
    "images/cantik3.jpg",
    "images/cantik4.jpg",
  ];

  static const List<String> _fotoBaris2 = [
    "images/cantik5.jpg",
    "images/cantik6.jpg",
    "images/cantik7.jpg",
    "images/cantik8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobile App Class",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 247, 137, 3),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      bottomNavigationBar: const AppFooter(showLogout: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png', height: 80),
            const Text(
              "Biodata",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Serif",
                height: 1.5,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _fotoRow(_fotoBaris1),
            const SizedBox(height: 20),
            _fotoRow(_fotoBaris2),
          ],
        ),
      ),
    );
  }

  Widget _fotoRow(List<String> paths) {
    return Row(
      children: [
        for (final path in paths) ...[
          Expanded(child: _fotoCard(path)),
          if (path != paths.last) const SizedBox(width: 8),
        ],
      ],
    );
  }

  Widget _fotoCard(String path) {
    return AspectRatio(
      aspectRatio: 80 / 100,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const ColoredBox(
              color: Color(0xFFFFE0B2),
              child: Icon(Icons.broken_image_outlined, color: Colors.orange),
            );
          },
        ),
      ),
    );
  }
}
