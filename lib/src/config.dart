import 'package:rive_animated_icon/rive_animated_icon.dart';

/// [RiveIcon] is a collection of icons
/// we're supporting right now
enum RiveIcon {
  home,
  search,
  timer,
  bell,
  settings,
  profile,
  refresh,
  star,
  audio,
  sliderHorizontal,
  sliderVertical,
  graduate,
  arrowUp,
  arrowDown,
  device,
  reload,
  forward,
  backward,
  bin,
  settings3,
  diamond,
  pen,
  profile2,
  reload2,
  zap,
  home2,
  mail,
  message,
  menuDots,
  cursor,
  add,
  sound,
  location,
  timer2,
  wifi,
  copy,
  unlock,
  dislike,
  like,
  call,
  warning,
  edit,
}

/// [RiveIconExtension] is used to return relevant RiveAsset depending on [RiveIcon]
extension RiveIconExtension on RiveIcon {
  RiveAsset getRiveAsset() {
    switch (this) {
      case RiveIcon.home:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'HOME',
          stateMachineName: 'HOME_interactivity',
          title: 'Home',
          shapeStrokeTitle: 'home',
        );
      case RiveIcon.search:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'SEARCH',
          stateMachineName: 'SEARCH_Interactivity',
          title: 'Search',
          shapeStrokeTitle: 'search',
        );
      case RiveIcon.refresh:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'REFRESH/RELOAD',
          stateMachineName: 'RELOAD_Interactivity',
          title: 'Refresh',
          shapeStrokeTitle: 'refresh',
        );
      case RiveIcon.profile:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'USER',
          stateMachineName: 'USER_Interactivity',
          title: 'Profile',
          shapeStrokeTitle: 'user',
        );
      case RiveIcon.audio:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'AUDIO',
          stateMachineName: 'AUDIO_Interactivity',
          title: 'Audio',
          shapeStrokeTitle: 'speaker',
        );
      case RiveIcon.bell:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'BELL',
          stateMachineName: 'BELL_Interactivity',
          title: 'Bell',
          shapeStrokeTitle: 'bell',
        );
      case RiveIcon.settings:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'SETTINGS',
          stateMachineName: 'SETTINGS_Interactivity',
          title: 'Settings',
          shapeStrokeTitle: 'settings',
        );
      case RiveIcon.star:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'LIKE/STAR',
          stateMachineName: 'STAR_Interactivity',
          title: 'Star',
          shapeStrokeTitle: 'star',
        );
      case RiveIcon.timer:
        return RiveAsset(
          src: Asset.iconSet1,
          artboard: 'TIMER',
          stateMachineName: 'TIMER_Interactivity',
          title: 'Timer',
          shapeStrokeTitle: 'timer',
        );
      case RiveIcon.graduate:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'academic-cap',
          title: 'Graduate',
          shapeStrokeTitle: 'cap',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.sliderHorizontal:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'adjustments-horizontal',
          title: 'Slider Horizontal',
          stateMachineName: 'State Machine 1',
          shapeStrokeTitle: 'line',
        );
      case RiveIcon.sliderVertical:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'adjustments-vertical',
          title: 'Slider Vertical',
          stateMachineName: 'State Machine 1',
          shapeStrokeTitle: 'line',
        );
      case RiveIcon.bin:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'archive-box',
          title: 'Bin',
          shapeStrokeTitle: 'bin',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.arrowDown:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'arrow-down',
          title: 'Arrow Down',
          stateMachineName: 'State Machine 1',
          shapeStrokeTitle: 'arrow',
        );
      case RiveIcon.arrowUp:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'arrow-up',
          title: 'Arrow Down',
          stateMachineName: 'arrowUP',
          shapeStrokeTitle: 'arrow',
        );
      case RiveIcon.device:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'device-phone-mobile',
          title: 'Device',
          stateMachineName: 'State Machine 1',
          shapeStrokeTitle: 'device',
        );
      case RiveIcon.reload:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'arrow-path',
          title: 'Reload',
          shapeStrokeTitle: 'reload',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.backward:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'backward',
          title: 'Backward',
          shapeStrokeTitle: 'back',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.forward:
        return RiveAsset(
          src: Asset.iconSet2,
          artboard: 'forward',
          title: 'Forward',
          stateMachineName: 'State Machine 1',
          shapeStrokeTitle: 'forward',
        );
      case RiveIcon.zap:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Zap-CLICK',
          title: 'Zap',
          stateMachineName: 'State-machine',
          shapeStrokeTitle: 'zap',
        );
      case RiveIcon.reload2:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Refresh-CLICK',
          title: 'Reload',
          stateMachineName: 'State-machine',
          shapeStrokeTitle: 'refresh',
        );
      case RiveIcon.home2:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Home-CLICK',
          title: 'Home',
          stateMachineName: 'State-machine',
          shapeStrokeTitle: 'home',
        );
      case RiveIcon.cursor:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Cursor-CLICK',
          title: 'Cursor',
          shapeStrokeTitle: 'cursor',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.settings3:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Gear-CLICK',
          title: 'Setting',
          stateMachineName: 'State-machine',
          shapeStrokeTitle: 'cog',
        );
      case RiveIcon.diamond:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Diamond-CLICK',
          title: 'Diamond',
          shapeStrokeTitle: 'diamond',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.pen:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Edit-CLICK',
          title: 'Pen',
          shapeStrokeTitle: 'edit',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.mail:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Mail-CLICK',
          title: 'Mail',
          stateMachineName: 'State-machine',
          shapeStrokeTitle: 'mail',
        );
      case RiveIcon.menuDots:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Dots-CLICK',
          title: 'Menu',
          shapeStrokeTitle: 'dots',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.message:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'Message-CLICK',
          title: 'Message',
          shapeStrokeTitle: 'message',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.profile2:
        return RiveAsset(
          src: Asset.iconSet3,
          artboard: 'User-CLICK',
          title: 'User',
          shapeStrokeTitle: 'user',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.add:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'add',
          title: 'Add',
          shapeStrokeTitle: 'add',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.call:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'call',
          title: 'Call',
          shapeStrokeTitle: 'call',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.copy:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'copy',
          title: 'Copy',
          shapeStrokeTitle: 'copy',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.dislike:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'dislike',
          title: 'Dislike',
          shapeStrokeTitle: 'dislike',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.edit:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'edit',
          title: 'Edit',
          shapeFillTitle: 'edit',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.location:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'location',
          title: 'Location',
          shapeFillTitle: 'location',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.like:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'like',
          title: 'Like',
          shapeStrokeTitle: 'like',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.sound:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'sound',
          title: 'Sound',
          shapeStrokeTitle: 'sound',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.timer2:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'timer',
          title: 'Timer',
          shapeFillTitle: 'timer',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.unlock:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'unlock',
          title: 'Unlock',
          shapeStrokeTitle: 'unlock',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.warning:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'warning',
          title: 'Warning',
          shapeStrokeTitle: 'warning',
          stateMachineName: 'State Machine 1',
        );

      case RiveIcon.wifi:
        return RiveAsset(
          src: Asset.iconSet4,
          artboard: 'wifi',
          title: 'Wifi',
          shapeStrokeTitle: 'wifi',
          stateMachineName: 'State Machine 1',
        );
    }
  }
}
