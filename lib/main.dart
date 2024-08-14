import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 15),
            const Text(
              'Experiment with text styles',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                final snackbar = const SnackBar(
                  content: Text('You clicked the button!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Click me'),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Flutter!',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
