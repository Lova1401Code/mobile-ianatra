import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:my_flutter_project/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Api convertion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  var info = "I-anatra application";
  int note = 0;
  String value = "";
  bool val1 = false;
  bool val2 = false;
  void augmente() {
    setState(() {
      note = note + 2;
    });
  }

  void change1(bool s) {
    setState(() {
      val1 = s;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }

  void onShow() {
    setState(() {
      value = new DateTime.now().toString();
    });
  }

  void sub(String a) {
    setState(() {
      value = "message envoyé à $value";
    });
  }

  void affichage(String b) {
    setState(() {
      value = "Texte de à $b";
    });
  }

  // void initState() {
  //   super.initState();
  //   _item.add(BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.qr_code_scanner,
  //       color: Colors.purple,
  //     ),
  //     label: null,
  //   ));
  //   _item.add(BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.qr_code_scanner,
  //       color: Colors.purple,
  //     ),
  //     label: null,
  //   ));
  //   _item.add(BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.qr_code_scanner,
  //       color: Colors.purple,
  //     ),
  //     label: null,
  //   ));
  // }

  // List<BottomNavigationBarItem> _item = [];
  // int _id = 0;
  // String _value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffB81736),
                Color(0xff281537),
              ])),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/lova.JPG'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Administrateur",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              onTap: () {},
              title: const Text('Accueil'),
            ),
            ExpansionTile(
              title: const Text('Profile'),
              leading: Icon(Icons.person),
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
