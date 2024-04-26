import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class RiveAnimatedIcon extends StatefulWidget {
  const RiveAnimatedIcon({
    super.key,
    this.height = 20,
    this.width = 20,
    this.color = Colors.black,
    required this.riveIcons,
    this.onTap,
    this.onHover
  });


  final Color color;

  final double? height;

  final double? width;

  final RiveIcons riveIcons;

  final VoidCallback? onTap;

  final Function? onHover;




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
        widget.onTap;
      },
      onHover: (_){

      },
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Image.asset('assets/rive_assets/image.png',),
        // RiveAnimation.asset(
        //       icon.src,
        //       artboard: icon.artboard,
        //       onInit: (artboard){
        //         StateMachineController controller =
        //             RiveUtil.getRiveController(artboard,
        //               stateMachineName: icon.stateMachineName,
        //             );
        //         icon.input = controller.findSMI("active") as SMIBool;
        //       },
        // ),
      ),

    );
  }
}


enum RiveIcons{
  home,
  search,
  timer,
  bell,
  settings,
  profile,
  refresh,
  star,
  chat,
  audio
}

class RiveUtil{
  static StateMachineController getRiveController(Artboard artboard,
      {stateMachineName = "State Machine 1"}){
    StateMachineController? controller =
    StateMachineController.fromArtboard(artboard,stateMachineName );
    artboard.addController(controller!);
    return controller;
  }
}

class RiveAsset{
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset({
        required this.src,
        required this.artboard,
        required this.stateMachineName,
        required this.title,
        this.input
  });

  set setInput(SMIBool status){
    input = status;
  }

}

extension RiveIconExtension on RiveIcons{
  RiveAsset getRiveAsset(){
    switch(this){
      case RiveIcons.home:
        return RiveAsset(src: Asset.iconSet1, artboard: 'HOME', stateMachineName: 'HOME_interactivity', title: 'Home');
      default:
        return RiveAsset(src: Asset.iconSet1, artboard: 'HOME', stateMachineName: 'HOME_interactivity', title: 'Home');
    }
  }
}

class Asset{
  static const iconSet1 = 'assets/rive_assets/icons1.riv';
}
