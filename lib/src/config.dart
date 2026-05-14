import 'package:rive_animated_icon/rive_animated_icon.dart';

/// [RiveIcon] is a collection of icons
/// we're supporting right now

enum RiveIcon {
  add,
  arrowDown,
  arrowForward,
  arrowUp,
  audio,
  backward,
  bell,
  bin,
  call,
  check,
  cloud,
  copy,
  cross,
  cursor,
  device,
  diamond,
  dislike,
  edit,
  fingerprint,
  forward,
  gallery,
  globe,
  graduate,
  home,
  home2,
  like,
  location,
  mail,
  menuDots,
  message,
  pen,
  pin,
  profile,
  profile2,
  refresh,
  reload,
  reload2,
  search,
  settings,
  settings3,
  share,
  sliderHorizontal,
  sliderVertical,
  sound,
  star,
  timer,
  timer2,
  unlock,
  upload,
  warning,
  wifi,
  zap,
}

/// [RiveIconExtension] is used to return relevant RiveAsset depending on [RiveIcon]
extension RiveIconExtension on RiveIcon {
  RiveAsset getRiveAsset() {
    switch (this) {
      case RiveIcon.add:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'add',
          title: 'Add',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.arrowDown:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'arrow-down',
          title: 'Arrow Down',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.arrowForward:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Arrow-CLICK',
          title: 'Arrow Forward',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.arrowUp:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'arrow-up',
          title: 'Arrow Up',
          stateMachineName: 'arrowUP',
        );
      case RiveIcon.audio:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'AUDIO',
          stateMachineName: 'AUDIO_Interactivity',
          title: 'Audio',
        );
      case RiveIcon.backward:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'backward',
          title: 'Backward',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.bell:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'BELL',
          stateMachineName: 'BELL_Interactivity',
          title: 'Bell',
        );
      case RiveIcon.bin:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'archive-box',
          title: 'Bin',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.call:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'call',
          title: 'Call',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.check:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'check',
          title: 'Check',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.cloud:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'cloud',
          title: 'Cloud',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.copy:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'copy',
          title: 'Copy',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.cross:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'cross',
          title: 'Cross',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.cursor:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Cursor-CLICK',
          title: 'Cursor',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.device:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'device-phone-mobile',
          title: 'Device',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.diamond:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Diamond-CLICK',
          title: 'Diamond',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.dislike:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'dislike',
          title: 'Dislike',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.edit:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'edit',
          title: 'Edit',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.fingerprint:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'fingerprint',
          title: 'Fingerprint',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.forward:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'forward',
          title: 'Forward',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.gallery:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'gallery',
          title: 'Gallery',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.globe:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'globe',
          title: 'Globe',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.graduate:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'academic-cap',
          title: 'Graduate',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.home:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'HOME',
          stateMachineName: 'HOME_interactivity',
          title: 'Home',
        );
      case RiveIcon.home2:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Home-CLICK',
          title: 'Home',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.like:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'like',
          title: 'Like',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.location:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'location',
          title: 'Location',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.mail:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Mail-CLICK',
          title: 'Mail',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.menuDots:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Dots-CLICK',
          title: 'Menu',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.message:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Message-CLICK',
          title: 'Message',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.pen:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Edit-CLICK',
          title: 'Pen',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.pin:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'pin',
          title: 'Pin',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.profile:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'USER',
          stateMachineName: 'USER_Interactivity',
          title: 'Profile',
        );
      case RiveIcon.profile2:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'User-CLICK',
          title: 'User',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.refresh:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'REFRESH/RELOAD',
          stateMachineName: 'RELOAD_Interactivity',
          title: 'Refresh',
        );
      case RiveIcon.reload:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'arrow-path',
          title: 'Reload',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.reload2:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Refresh-CLICK',
          title: 'Reload',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.search:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'SEARCH',
          stateMachineName: 'SEARCH_Interactivity',
          title: 'Search',
        );
      case RiveIcon.settings:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'SETTINGS',
          stateMachineName: 'SETTINGS_Interactivity',
          title: 'Settings',
        );
      case RiveIcon.settings3:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Gear-CLICK',
          title: 'Setting',
          stateMachineName: 'State-machine',
        );
      case RiveIcon.share:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'share',
          title: 'Share',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.sliderHorizontal:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'adjustments-horizontal',
          title: 'Slider Horizontal',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.sliderVertical:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'adjustments-vertical',
          title: 'Slider Vertical',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.sound:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'sound',
          title: 'Sound',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.star:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'LIKE/STAR',
          stateMachineName: 'STAR_Interactivity',
          title: 'Star',
        );
      case RiveIcon.timer:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'TIMER',
          stateMachineName: 'TIMER_Interactivity',
          title: 'Timer',
        );
      case RiveIcon.timer2:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'timer',
          title: 'Timer',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.unlock:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'unlock',
          title: 'Unlock',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.upload:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'upload',
          title: 'Upload',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.warning:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'warning',
          title: 'Warning',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.wifi:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'wifi',
          title: 'Wifi',
          stateMachineName: 'State Machine 1',
        );
      case RiveIcon.zap:
        return RiveAsset(
          src: Asset.iconSet,
          artboard: 'Zap-CLICK',
          title: 'Zap',
          stateMachineName: 'State-machine',
        );
    }
  }
}
