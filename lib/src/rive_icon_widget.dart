import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

class RiveIconWidget extends StatelessWidget {
  const RiveIconWidget({
    super.key,
    required this.widget,
    required this.icon,
  });

  final RiveAnimatedIcon widget;
  final RiveAsset icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
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

          artboard.forEachComponent((child) {
            if (child is Shape) {
              final shape = child;
              if (shape.name == icon.shapeStrokeTitle) {
                shape.strokes.first.paint.color = widget.color;
              } else if (shape.name == icon.shapeFillTitle) {
                shape.fills.first.paint.color = widget.color;
              }
            }
          });
          widget.loopAnimation == true
              ? icon.input!.change(true)
              : icon.input!.change(false);

          icon.numberInput?.value = widget.strokeWidth - 1;
        },
      ),
    );
  }
}
