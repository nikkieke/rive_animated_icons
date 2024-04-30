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
        print('tapped');
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
  final String? shapeFillTitle, shapeStrokeTitle;
  late SMIBool? input;

  RiveAsset({
        required this.src,
        required this.artboard,
        required this.stateMachineName,
        required this.title,
        this.input,
        this.shapeFillTitle,
        this.shapeStrokeTitle,
  });

  set setInput(SMIBool status){
    input = status;
  }

}

extension RiveIconExtension on RiveIcons{
  RiveAsset getRiveAsset(){
    switch(this){
      case RiveIcons.home:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'HOME',
            stateMachineName: 'HOME_interactivity',
            title: 'Home',
            shapeStrokeTitle: 'home');
      case RiveIcons.search:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'SEARCH',
            stateMachineName: 'SEARCH_Interactivity',
            title: 'Search',
            shapeStrokeTitle: 'search');
      case RiveIcons.refresh:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'REFRESH/RELOAD',
            stateMachineName: 'RELOAD_Interactivity',
            title: 'Refresh',
            shapeStrokeTitle: 'refresh');
      case RiveIcons.profile:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'USER',
            stateMachineName: 'USER_Interactivity',
            title: 'Profile',
            shapeStrokeTitle: 'user');
      case RiveIcons.chat:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'CHAT',
            stateMachineName: 'CHAT_Interactivity',
            title: 'Chat',
            shapeFillTitle: 'chat',
            shapeStrokeTitle: 'chat',
            );
      case RiveIcons.audio:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'AUDIO',
            stateMachineName: 'AUDIO_Interactivity',
            title: 'Audio',
            shapeStrokeTitle: 'speaker');
      case RiveIcons.bell:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'BELL',
            stateMachineName: 'BELL_Interactivity',
            title: 'Bell',
            shapeStrokeTitle: 'bell');
      case RiveIcons.settings:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'SETTINGS',
            stateMachineName: 'SETTINGS_Interactivity',
            title: 'Settings',
            shapeStrokeTitle: 'settings');
      case RiveIcons.star:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'LIKE/STAR',
            stateMachineName: 'STAR_Interactivity',
            title: 'Star',
            shapeStrokeTitle: 'star');
      case RiveIcons.timer:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'TIMER',
            stateMachineName: 'TIMER_Interactivity',
            title: 'Timer',
            shapeStrokeTitle: 'timer');
      default:
        return RiveAsset(src: Asset.iconSet1, artboard: 'HOME', stateMachineName: 'HOME_interactivity', title: 'Home');
    }
  }
}

class Asset{
  static const iconSet1 = 'packages/rive_animated_icon/assets/icons1.riv';
}
