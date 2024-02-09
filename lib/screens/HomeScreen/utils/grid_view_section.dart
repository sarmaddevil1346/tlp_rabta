import 'package:flutter/material.dart';

import '../../../Models/grid_icons_models.dart';
import '../../../Models/home_screen_models.dart';

class BottomGridSection {
  Widget buildGridViewSection() {
    return Expanded(
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(bottomGridIcons[index]))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    getHomePageModels[index].title,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(getHomePageModels[index].percent.toString())
              ],
            ),
          );
        },
      ),
    );
  }
}
