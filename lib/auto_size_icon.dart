import 'package:flutter/material.dart';

class AutoSizeIcon extends StatelessWidget {
  final IconData iconData;
  final double availableSpace;
  final double maxIconSize;

  AutoSizeIcon({
    required this.iconData,
    required this.availableSpace,
    required this.maxIconSize,
  });

  @override
  Widget build(BuildContext context) {
    double calculatedIconSize =
    (availableSpace * 0.8).clamp(0, maxIconSize);

    return Icon(
      iconData,
      size: calculatedIconSize,
    );
  }
}
