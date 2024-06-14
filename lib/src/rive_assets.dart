import 'package:rive/rive.dart';

class RiveUtil {
  static StateMachineController getRiveController(
    Artboard artboard, {
    String stateMachineName = 'State Machine 1',
  }) {
    final controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    return controller;
  }
}

///[RiveAsset] class contains all the parameters required to successfully render
///rive animated icons
class RiveAsset {
  RiveAsset({
    required this.src,
    required this.artboard,
    required this.title,
    this.stateMachineName,
    this.input,
    this.shapeFillTitle,
    this.shapeStrokeTitle,
  });
  final String artboard;
  final String title;
  final String src;
  final String? shapeFillTitle;
  final String? shapeStrokeTitle;
  final String? stateMachineName;
  late SMIBool? input;
  late SMINumber? numberInput;

  set setInput(SMIBool status) {
    input = status;
  }
}

///The [Asset] class provides access to all the available icon's file paths
class Asset {
  static const iconSet1 = 'packages/rive_animated_icon/assets/icons1.riv';
  static const iconSet2 = 'packages/rive_animated_icon/assets/icons2.riv';
  static const iconSet3 = 'packages/rive_animated_icon/assets/icons3.riv';
  static const iconSet4 = 'packages/rive_animated_icon/assets/icons4.riv';
}
