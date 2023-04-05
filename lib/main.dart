import 'dart:ui';

import 'package:flutter/material.dart';

import 'images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: UiSwift(),
      );
}

class UiSwift extends StatelessWidget {
  const UiSwift({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 250,
                  left: 30,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  top: 300,
                  right: 10,
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.blue.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 50,
                sigmaY: 50,
              ),
              child: const SizedBox(
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 100,
              right: 50,
              child: Image.asset(
                Images.logoSwift,
              ),
            ),
          ],
        ),
      );
}
