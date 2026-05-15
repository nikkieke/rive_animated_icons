import 'package:rive/rive.dart';

///[RiveAsset] class contains all the parameters required to successfully render
///rive animated icons
class RiveAsset {
  RiveAsset({
    required this.src,
    required this.artboard,
    required this.title,
    this.stateMachineName,
  });
  final String artboard;
  final String title;
  final String src;
  final String? stateMachineName;
  ViewModelInstance? viewModelInstance;
}

///The [Asset] class provides access to the icon set file path
class Asset {
  static const iconSet = 'packages/rive_animated_icon/assets/icon-set.riv';
}
