import 'package:curve_clipper/curve_clipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curve Clipper Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // home: const WorkWithProgressLineScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomClipperWidget(
              mode: ClipperMode.concave,
              heightFromOrigin: 180,
              curvePoint: 80,
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
