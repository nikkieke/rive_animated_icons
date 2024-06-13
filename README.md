# RiveAnimatedIcons

<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-android-blue">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-blue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-web-blue">
</a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License"></a>

This package provides rive animated icons that can be customized to suit your preference. It includes the riveIcon type, onTap, color parameters and others to give the user a level of control.

### Icons Sample

![InShot_20240613_173737631](https://github.com/nikkieke/rive_animated_icons/assets/95222620/d8cf8d4d-e2f8-4408-a8f6-93cc49dc00a9)

## Example

```dart

RiveAnimatedIcon(
    riveIcon: RiveIcon.home,
    width: 50,
    height: 50,
    color: Colors.green,
    loopAnimation: false,
    onTap: (){},
    onHover: (value){}                          
),

```


## Required parameter

#### riveIcon:
This parameter is used to define the icon type from the RiveIcon enum

## Optional parameters

#### width:
This parameter is used to set the icon width

#### height:
This parameter is used to set the icon height

#### color:
This parameter is used to set icon color

#### loopAnimation:
When this parameter is set to `true` the icon's animation will be on loop

#### onTap:
This callback is set by the user to perform actions onTap

#### onHover:
This callback is set by the user to perform actions onHover

#### splashColor:
This parameter is used to set icon splash color

#### strokeWidth:
This parameter is used to set icon stroke width

## Animated Icon stroke width sample
![InShot_20240613_173956029](https://github.com/nikkieke/rive_animated_icons/assets/95222620/f5b9207b-7ce3-45e0-9485-5209373265be)


## License
Rive Animated Icons is [MIT-licensed](https://github.com/nikkieke/rive_animated_icons/edit/main/LICENSE)

## Animation credits
All the icons available are Rive animated. I've tagged the animators, you can find them in the [Rive community](https://rive.app/community/files/)
- @drawsgood
- @Daniyar
- @nikkieke001

## Maintainers
- [Nikki Eke](https://github.com/nikkieke)

