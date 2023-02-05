import 'package:flutter/material.dart';
import 'package:screen_app/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return const MyBox();
                    },
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return const MyTile();
                      })))
            ]),
          ),
          Expanded(
              child: Container(
            color: Colors.pink,
          ))
        ],
      ),
    );
  }
}
