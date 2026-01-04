import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_2/constants.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_box.dart';
import 'package:responsive_ui_sample_2/responsive/utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar(' D E S K T O P '),
      body: Row(
        children: [
          // Opened Drawer
          myDrawer,

          // Rest of the body
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
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
          ),

          // Left layout
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
