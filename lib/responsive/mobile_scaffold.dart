import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_2/constants.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_box.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar(' M O B I L E '),
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 4 Boxes on the top
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => const MyBox(),
                ),
              ),
            ),

            // tiles below
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => const MyTile(),
            ),
          ],
        ),
      ),
    );
  }
}
