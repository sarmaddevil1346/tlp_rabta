import 'package:flutter/material.dart';

extension SpaceSymmetric on num {
  SizedBox get spaceV => SizedBox(
        height: toDouble(),
      );
  SizedBox get spaceH => SizedBox(
        width: toDouble(),
      );
}
