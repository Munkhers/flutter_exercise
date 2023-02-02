import 'package:flutter/material.dart';
import 'package:income/home_page.dart';
import 'package:income/profile.dart';
import 'text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyScaffoldApp(),
      routes: {
        Home.routeName: (_) => Home(),
        Profile.routeName: (_) => Profile(),
        TextListField.routeName: (_) => const TextListField(),
      },
    );
  }
}

class MyScaffoldApp extends StatefulWidget {
  const MyScaffoldApp({super.key});

  @override
  State<MyScaffoldApp> createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('flutter'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.routeName);
                },
                child: const Text('press')),
            Image.asset('images/photo.jpg'),
            Image.asset('images/tree.jpg'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Home.routeName);
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Profile.routeName);
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(TextListField.routeName);
              },
              icon: const Icon(
                Icons.text_fields,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
