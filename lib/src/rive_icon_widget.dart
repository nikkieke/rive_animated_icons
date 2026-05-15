import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

/// [RiveIconWidget] is the rive animated component.
/// This class uses the asset path, state machine controller and other params provided to
/// effectively render the rive animated icon component.
class RiveIconWidget extends StatefulWidget {
  const RiveIconWidget({
    required this.widget,
    required this.icon,
    super.key,
  });

  final RiveAnimatedIcon widget;
  final RiveAsset icon;

  @override
  State<RiveIconWidget> createState() => _RiveIconWidgetState();
}

class _RiveIconWidgetState extends State<RiveIconWidget> {
  static FileLoader? _fileLoader;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await RiveNative.init();
    _fileLoader ??= FileLoader.fromAsset(
      widget.icon.src,
      riveFactory: Factory.flutter,
    );
    if (mounted) setState(() => _initialized = true);
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return SizedBox(
        height: widget.widget.height,
        width: widget.widget.width,
      );
    }

    return SizedBox(
      height: widget.widget.height,
      width: widget.widget.width,
      child: RiveWidgetBuilder(
        fileLoader: _fileLoader!,
        artboardSelector: ArtboardNamed(widget.icon.artboard),
        stateMachineSelector: widget.icon.stateMachineName != null
            ? StateMachineNamed(widget.icon.stateMachineName!)
            : const StateMachineDefault(),
        dataBind: DataBind.auto(),
        onFailed: (error, stackTrace) {
          debugPrint('RiveIconWidget failed [${widget.icon.artboard}]: $error');
        },
        onLoaded: (state) {
          final vmi = state.viewModelInstance;
          widget.icon.viewModelInstance = vmi;
          vmi?.color('color')?.value = widget.widget.color;
          vmi?.number('strokeWidth')?.value = widget.widget.strokeWidth - 1;
          vmi?.boolean('active')?.value = widget.widget.loopAnimation;
        },
        builder: (context, state) => switch (state) {
          RiveLoaded(:final controller) => RiveWidget(controller: controller),
          _ => const SizedBox.shrink(),
        },
      ),
    );
  }
}
