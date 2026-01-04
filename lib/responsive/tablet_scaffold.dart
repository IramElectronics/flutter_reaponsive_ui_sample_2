import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_2/constants.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_box.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar(' T A B L E T '),
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 4 Boxes on the top
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
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
