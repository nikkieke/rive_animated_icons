import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import '../rive_animated_icon.dart';

class RiveAnimatedIcon extends StatefulWidget {
  const RiveAnimatedIcon({
    super.key,
    this.height = 20,
    this.width = 20,
    this.color = Colors.black,
    required this.riveIcons,
    this.onTap,
    this.onHover,
    this.loopAnimation = false,
  });


  final Color color;

  final double? height;

  final double? width;

  final RiveIcons riveIcons;

  final VoidCallback? onTap;

  final Function? onHover;

  final bool? loopAnimation;




  @override
  State<RiveAnimatedIcon> createState() => _RiveAnimatedIconState();
}

class _RiveAnimatedIconState extends State<RiveAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    RiveAsset icon = widget.riveIcons.getRiveAsset();
    return InkWell(
      onTap: (){
        icon.input!.change(true);
        Future.delayed(const Duration(seconds: 1),(){
          icon.input!.change(false);
        });
        //print('tapped');
        widget.onTap;
      },
      onHover: (_){
        icon.input!.change(true);
        Future.delayed(const Duration(seconds: 1),(){
          icon.input!.change(false);
        });
        widget.onHover;
      },
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: RiveAnimation.asset(
              icon.src,
              artboard: icon.artboard,
              onInit: (artboard){
                StateMachineController controller =
                    RiveUtil.getRiveController(artboard,
                      stateMachineName: icon.stateMachineName,
                    );
                icon.input = controller.findSMI("active") as SMIBool;

                artboard.forEachComponent((child) {
                  if(child is Shape){
                    final Shape shape = child;
                    if(shape.name == icon.shapeStrokeTitle || shape.name == icon.shapeStrokeTitle2){
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