import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({super.key});
  static const routeName = 'profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _controller = TextEditingController();
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    userInput = _controller.text;
                  });
                },
                child: const Text(
                  'Display Value',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              child: TextFormField(controller: _controller),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  userInput,
                  style: const TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
