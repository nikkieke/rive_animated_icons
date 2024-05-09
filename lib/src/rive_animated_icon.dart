import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'package:rive_animated_icon/rive_animated_icon.dart';

/// [RiveAnimatedIcon] is used to render animated icons with different parameters and callbacks
class RiveAnimatedIcon extends StatefulWidget {
  const RiveAnimatedIcon({
    required this.riveIcon, super.key,
    this.height = 20,
    this.width = 20,
    this.color = Colors.black,
    this.onTap,
    this.onHover,
    this.loopAnimation = false,
  });

  /// [color] is for rendering animated icon with respected color.
  /// Default Value: [Colors.black]
  final Color color;

  /// [height] is for rendering animated icon with respected height.
  /// Default Value: [20]
  final double? height;

  /// [width] is for rendering animated icon with respected width.
  /// Default Value: [20]
  final double? width;

  /// [riveIcon] is for rendering rive animated icon with respect to the passed icon.
  /// it's a required parameter for [RiveAnimatedIcon]
  final RiveIcon riveIcon;

  /// [onTap] is a callback which is sent by user and it's used to perform actions on tap.
  /// it's an optional parameter for [RiveAnimatedIcon]
  final VoidCallback? onTap;

  /// [onHover] is a callback which is sent by user depend on his requirements.
  /// it's an  optional parameter for [RiveAnimatedIcon]
  final ValueChanged<bool>? onHover;

  /// [loopAnimation] is a boolean to set animation on loop or not.
  /// Default Value: false
  final bool loopAnimation;




  @override
  State<RiveAnimatedIcon> createState() => _RiveAnimatedIconState();
}

class _RiveAnimatedIconState extends State<RiveAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    final icon = widget.riveIcon.getRiveAsset();
    return InkWell(
      onTap: (){
        icon.input!.change(true);
        Future.delayed(const Duration(seconds: 1),(){
          icon.input!.change(false);
        });
        widget.onTap?.call();
      },
      onHover: (value){
        icon.input!.change(true);
        Future.delayed(const Duration(seconds: 1),(){
          icon.input!.change(false);
        });
        widget.onHover?.call(value);
      },
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: RiveAnimation.asset(
          icon.src,
          artboard: icon.artboard,
          onInit: (artboard){
            final controller =
            RiveUtil.getRiveController(artboard,
              stateMachineName: '${icon.stateMachineName}',
            );
            icon.input = controller.findSMI('active') as SMIBool;

            artboard.forEachComponent((child) {
              if(child is Shape){
                final shape = child;
                if(shape.name == icon.shapeStrokeTitle){
                  shape.strokes.first.paint.color = widget.color;
                }else if(shape.name == icon.shapeFillTitle){
                  shape.fills.first.paint.color = widget.color;
                }
              }
            });
            widget.loopAnimation == true? icon.input!.change(true): icon.input!.change(false);
          },
        ),
      ),

    );
  }
}
