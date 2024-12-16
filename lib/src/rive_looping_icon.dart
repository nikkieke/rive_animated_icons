import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../rive_animated_icon.dart';

/// [LoopingRiveIcon] renders an infinitely looping Rive animation icon
class LoopingRiveIcon extends StatelessWidget {
  const LoopingRiveIcon({
    required this.riveIcon,
    super.key,
    this.height = 20,
    this.width = 20,
    this.strokeWidth = 2,
    this.color = Colors.black,
  });

  /// [riveIcon] specifies the Rive asset and configuration.
  final RiveIcon riveIcon;

  /// [color] sets the color of the icon.
  /// Default Value: [Colors.black]
  final Color color;

  /// [height] sets the height of the icon.
  /// Default Value: [20]
  final double height;

  /// [width] sets the width of the icon.
  /// Default Value: [20]
  final double width;

  /// [strokeWidth] controls the stroke width of the icon.
  /// Default Value: [2]
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    final icon = riveIcon.getRiveAsset();
    return SizedBox(
      height: height,
      width: width,
      child: RiveAnimation.asset(
        icon.src,
        artboard: icon.artboard,
        onInit: (artboard) {
          final controller = RiveUtil.getRiveController(
            artboard,
            stateMachineName: '${icon.stateMachineName}',
          );
          icon
            ..input = controller.findSMI('active') as SMIBool
            ..numberInput = controller.findSMI('strokeWidth') as SMINumber;

          icon.numberInput?.value = strokeWidth - 1;
          artboard.forEachComponent((child) {
            if (child is Shape) {
              if (child.name == icon.shapeStrokeTitle) {
                child.strokes.first.paint.color = color;
              } else if (child.name == icon.shapeFillTitle) {
                child.fills.first.paint.color = color;
              }
            }
          });

          icon.input?.change(true);
        },
      ),
    );
  }
}
