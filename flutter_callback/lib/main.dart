
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Callback Example',
      home: CallbackExample(),
    );
  }
}

class CallbackExample extends StatelessWidget {
  const CallbackExample({super.key});

  void _showMessage(String message) {
    debugPrint('Message received: $message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Callback Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMessage('Button pressed');
          },
          child: const Text('Press Me'),
        ),
      ),
    );
  }
}
