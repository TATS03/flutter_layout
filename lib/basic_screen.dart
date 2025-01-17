import 'package:flutter/material.dart';
import 'package:flutter_layout/immutable_Widget.dart';
import 'package:flutter_layout/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('welcome to flutter'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),

      body: Column(
        children:  [
            Semantics(
              enabled: true,
              label:  'A beautiful beach',
              child: Image.asset('beach.jpg')
              ),
            const TextLayout(),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.lightBlue,
        child: Center(
          child: Text('i\'m a drawer'),
        ),
      ),
    );
  }
}
