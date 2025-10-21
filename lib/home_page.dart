import 'package:aumet_welcome_dialog/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Center(child: Text("home")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog(context, "t", "t");
        },
        child: const Icon(Icons.open_in_new), // add icon
      ),
    );
  }
}
