import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Responsivo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const WideLayout();
          } else {
            return const NarrowLayout();
          }
        },
      ),
    );
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(color: Colors.blue, child: const Center(child: Text('Menu', style: TextStyle(color: Colors.white)))),
        ),
        Expanded(
          flex: 3,
          child: Container(color: Colors.grey[200], child: const Center(child: Text('Conteúdo Principal'))),
        ),
      ],
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(color: Colors.blue, child: const Center(child: Text('Menu', style: TextStyle(color: Colors.white)))),
        ),
        Expanded(
          flex: 3,
          child: Container(color: Colors.grey[200], child: const Center(child: Text('Conteúdo Principal'))),
        ),
      ],
    );
  }
}
