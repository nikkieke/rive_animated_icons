import '../rive_animated_icon.dart';

enum RiveIcons{
  home,
  search,
  timer,
  bell,
  settings,
  profile,
  refresh,
  star,
  //chat,
  audio,
  sliderHorizontal,
  sliderVertical,
  graduate,
  arrowUp,
  arrowDown,
  device,
  reload,
  settings2,
  forward,
  backward,
  bin,
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
    // case RiveIcons.chat:
    //   return RiveAsset(
    //       src: Asset.iconSet1,
    //       artboard: 'CHAT',
    //       stateMachineName: 'CHAT_Interactivity',
    //       title: 'Chat',
    //       shapeFillTitle: 'chat',
    //       shapeStrokeTitle: 'chat',
    //       );
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
      case RiveIcons.graduate:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'academic-cap',
            title: 'Graduate',
            shapeStrokeTitle: 'cap',
            stateMachineName: 'State Machine 1');
      case RiveIcons.sliderHorizontal:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'adjustments-horizontal',
            title: 'Slider Horizontal',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'line');
      case RiveIcons.sliderVertical:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'adjustments-vertical',
            title: 'Slider Vertical',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'line',);
      case RiveIcons.bin:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'archive-box',
            title: 'Bin',
            shapeStrokeTitle: 'bin',
            stateMachineName: 'State Machine 1');
      case RiveIcons.arrowDown:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'arrow-down',
            title: 'Arrow Down',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'arrow');
      case RiveIcons.arrowUp:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'arrow-up',
            title: 'Arrow Down',
            stateMachineName: 'arrowUP',
            shapeStrokeTitle: 'arrow');
      case RiveIcons.device:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'device-phone-mobile',
            title: 'Device',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'device');
      case RiveIcons.reload:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'arrow-path',
            title: 'Reload',
            shapeStrokeTitle: 'reload',
            stateMachineName: 'State Machine 1');
      case RiveIcons.settings2:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'cog-6-tooth',
            title: 'Settings',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'cog',
            shapeStrokeTitle2: 'cog1');
      case RiveIcons.backward:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'backward',
            title: 'Backward',
            shapeStrokeTitle: 'back',
            stateMachineName: 'State Machine 1');
      case RiveIcons.forward:
        return RiveAsset(
            src: Asset.iconSet2,
            artboard: 'forward',
            title: 'Forward',
            stateMachineName: 'State Machine 1',
            shapeStrokeTitle: 'forward');
      default:
        return RiveAsset(
            src: Asset.iconSet1,
            artboard: 'HOME',
            stateMachineName: 'HOME_interactivity',
            title: 'Home');
    }
  }
}