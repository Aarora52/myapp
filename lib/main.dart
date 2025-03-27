import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? text;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Text('$text')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter Your text'),
            onChanged: (newText) {
              setState(() => text = newText);
            },
          ),
ElevatedButton(onPressed: null, child: Text('Submit')),
        ],
      ),
    );
  }
}
