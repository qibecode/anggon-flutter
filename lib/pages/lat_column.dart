import "package:flutter/material.dart";

class HalKolom extends StatelessWidget {
  const HalKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SMK 2 KRAKSAAN"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 136, 81, 239),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Center(child: Text('Kotak 1')),
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.green,
                child: const Center(child: Text('Kotak 2')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('Kotak 3')),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blueGrey,
                child: const Center(child: Text('Kotak 4')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Center(child: Text('Kotak 1')),
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.green,
                child: const Center(child: Text('Kotak 2')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('Kotak 3')),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blueGrey,
                child: const Center(child: Text('Kotak 4')),
              ),
            ],
          ),
        ));
  }
}
