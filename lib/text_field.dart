import 'package:flutter/material.dart';

class TextListField extends StatefulWidget {
  const TextListField({super.key});
  static const routeName = 'text_field';

  @override
  State<TextListField> createState() => _TextListFieldState();
}

class _TextListFieldState extends State<TextListField> {
  final TextEditingController _controller = TextEditingController();
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text'),
      ),
      body: ListView.builder(
        itemCount: 5,
        physics: const ScrollPhysics(),
        itemBuilder: ((context, index) => TextFormField(
              controller: _controller,
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              userInput = _controller.text;
            });
          },
          child: Text(userInput),
        ),
      ),
    );
  }
}
