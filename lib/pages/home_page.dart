import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text("Xpress Chat")),
      ),
      body: Center(
        child: Text("HomePage"),
      ),
      drawer: Drawer(),
    );
  }
}
