import 'package:rive/rive.dart';

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
  final String artboard,title, src;
  final String? shapeFillTitle, shapeStrokeTitle, shapeStrokeTitle2, stateMachineName;
  late SMIBool? input;

  RiveAsset({
    required this.src,
    required this.artboard,
    this.stateMachineName,
    required this.title,
    this.input,
    this.shapeFillTitle,
    this.shapeStrokeTitle,
    this.shapeStrokeTitle2,
  });

  set setInput(SMIBool status){
    input = status;
  }

}



class Asset{
  static const iconSet1 = 'packages/rive_animated_icon/assets/icons1.riv';
  static const iconSet2 = 'packages/rive_animated_icon/assets/icons2.riv';
}
