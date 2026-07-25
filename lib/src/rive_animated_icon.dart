import 'package:flutter/material.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

/// [RiveAnimatedIcon] is used to render animated icons with different parameters and callbacks
class RiveAnimatedIcon extends StatefulWidget {
  const RiveAnimatedIcon({
    required this.riveIcon,
    super.key,
    this.height = 20,
    this.width = 20,
    this.strokeWidth = 2,
    this.color = Colors.black,
    this.onTap,
    this.onHover,
    this.loopAnimation = true,
    this.splashColor = Colors.transparent,
    this.splashFactory = InkSplash.splashFactory,
    this.mouseCursor = SystemMouseCursors.click,
    this.enableAbsorbPointer = false,
    this.semanticLabel,
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

  /// [strokeWidth] is for rendering the animated icon with respected stroke width
  /// Default value: [2]
  /// it's an  optional parameter for [RiveAnimatedIcon]
  final double strokeWidth;

  /// [splashColor] is for rendering the splash color when the icon is tapped
  /// Default value: [Colors.transparent]
  /// it's an  optional parameter for [RiveAnimatedIcon]
  final Color splashColor;

  /// [splashFactory] is for rendering the splash factory when the icon is tapped
  final InteractiveInkFeatureFactory splashFactory;

  /// [mouseCursor] is for rendering the mouse cursor when the icon is hovered
  /// Default value: [SystemMouseCursors.click]
  /// it's an  optional parameter for [RiveAnimatedIcon]
  final MouseCursor mouseCursor;

  /// [enableAbsorbPointer] is a boolean to enable or disable absorbPointer.
  /// To disable all interactive features of the [RiveAnimatedIcon] set this to true
  /// Default Value: false
  final bool enableAbsorbPointer;

  /// [semanticLabel] is used to describe the icon to accessibility services
  /// (e.g. screen readers).
  /// If not provided, this falls back to the icon's own [RiveAsset.title].
  /// it's an optional parameter for [RiveAnimatedIcon]
  final String? semanticLabel;

  @override
  State<RiveAnimatedIcon> createState() => _RiveAnimatedIconState();
}

class _RiveAnimatedIconState extends State<RiveAnimatedIcon> {
  late RiveAsset _icon;

  @override
  void initState() {
    super.initState();
    _icon = widget.riveIcon.getRiveAsset();
  }

  @override
  void didUpdateWidget(covariant RiveAnimatedIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.riveIcon != oldWidget.riveIcon) {
      _icon = widget.riveIcon.getRiveAsset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final icon = _icon;
    return Semantics(
      button: true,
      label: widget.semanticLabel ?? icon.title,
      child: AbsorbPointer(
        absorbing: widget.enableAbsorbPointer,
        child: InkWell(
          splashColor: widget.splashColor,
          highlightColor: widget.splashColor,
          splashFactory: widget.splashFactory,
          mouseCursor: widget.mouseCursor,
          onTap: () {
            icon.viewModelInstance?.boolean('active')?.value = true;
            Future.delayed(const Duration(seconds: 1), () {
              if (mounted) {
                icon.viewModelInstance?.boolean('active')?.value = false;
              }
            });
            widget.onTap?.call();
          },
          onHover: (value) {
            icon.viewModelInstance?.boolean('active')?.value = value;
            if (value) {
              Future.delayed(const Duration(seconds: 1), () {
                if (mounted) {
                  icon.viewModelInstance?.boolean('active')?.value = false;
                }
              });
            }
            widget.onHover?.call(value);
          },
          child: RiveIconWidget(widget: widget, icon: icon),
        ),
      ),
    );
  }
}
