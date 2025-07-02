import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String name = '';
  void greeting() {
    setState(() {
      name = "hello ," + control.text;
    });
  }

  // text editing controller
  TextEditingController control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              TextField(
                controller: control,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type Your name",
                ),
              ),
              ElevatedButton(onPressed: greeting, child: Text('tap')),
            ],
          ),
        ),
      ),
    );
  }
}
