import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

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
