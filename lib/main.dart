import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("home"),
      ),
      drawer: Drawer(
        width: 200,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "الملف الشخصي",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const Icon(Icons.person),
                  ],
                )),
            Divider(
              height: 15,
              color: Colors.black,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  " الاصدقاء",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Icon(Icons.person),
              ],
            )),
            Divider(
              height: 15,
              color: Colors.black,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  " الاعدادت",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Icon(Icons.settings),
              ],
            )),
            Divider(
              height: 15,
              color: Colors.black,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  " المساعدة والدعم",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Icon(Icons.help),
              ],
            ))
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff027dfd),
            Color(0xff4100e0),
            Color(0xff1cdac5),
            Color(0xfff2dd22),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 60.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
