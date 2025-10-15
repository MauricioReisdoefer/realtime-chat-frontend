import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu App Stateless'), centerTitle: true),
      body: const Center(child: Text('Hello from Stateless!')),
    );
  }
}
