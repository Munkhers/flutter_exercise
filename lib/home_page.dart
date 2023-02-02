import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static const routeName = 'home_page';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number += 1;
                });
              },
              child: const Text('add more'),
            ),
            ListView.builder(
              physics: const ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemBuilder: (context, int index) {
                return Container(
                  color: index.isEven ? Colors.blue : Colors.white,
                  child: const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text('Title'),
                    subtitle: Text('subtitle'),
                    trailing: Icon(Icons.deck),
                  ),
                );
              },
              itemCount: number,
            ),
          ],
        ),
      ),
    );
  }
}
