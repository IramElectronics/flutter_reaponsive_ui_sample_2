import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_2/responsive/desktop_scaffold.dart';
import 'package:responsive_ui_sample_2/responsive/mobile_scaffold.dart';
import 'package:responsive_ui_sample_2/responsive/responsive_layout.dart';
import 'package:responsive_ui_sample_2/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
