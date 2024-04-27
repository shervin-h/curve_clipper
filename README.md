
<img alt="Flutter" src="https://img.shields.io/badge/Flutter-075898?style=flat-squar&logo=flutter&logoColor=white"/>

<p align="center">
  <img alt="demo" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/curve_clipper_demo.gif?raw=true" height="400">
</p>

# Curve Clipper

[![pub package](https://img.shields.io/pub/v/curve_clipper.svg)](https://pub.dev/packages/curve_clipper)

Use `curve_clipper` package

- In applications that have innovation in design
- Use in modern designs
- Cutting widgets for the beauty and uniqueness of the design

🎛 📱

## Install Package

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  curve_clipper: ^0.1.0
```

Then run:

```
flutter pub get
```

## Usage

Import it

```dart
import 'package:curve_clipper/curve_clipper.dart';
```
---

<br>

<p align="center">
    <img alt="wavy" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/wavy.png?raw=true" height="500">
</p>

```dart
CustomClipperWidget(
  mode: ClipperMode.wavy,
  heightFromOrigin: 160,
  child: Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      color: Colors.cyan,
    ),
  ),
),
```

---

<br>

<p align="center">
    <img alt="wavy-sin" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/wavy_sin.png?raw=true" height="500">
</p>

```dart
CustomClipperWidget(
  mode: ClipperMode.wavySin,
  heightFromOrigin: 100,
  child: Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      color: Colors.cyan,
    ),
  ),
),
```

---

<br>

<p align="center">
    <img alt="wavy-curtain" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/wavy_curtain.png?raw=true" height="500">
</p>

```dart
CustomClipperWidget(
  mode: ClipperMode.wavyCurtain,
  heightFromOrigin: 180,
  curvePoint: 80,
  child: Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      color: Colors.cyan,
    ),
  ),
),
```

- `curvePoint` is the point in the center that has the lowest height
- Its value must be greater than zero and less than `heightFromOrigin`

---

<br>

<p align="center">
    <img alt="convex" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/convex.png?raw=true" height="500">
</p>

```dart
CustomClipperWidget(
  mode: ClipperMode.convex,
  heightFromOrigin: 120,
  child: Container(
    width: double.infinity,
    height: 200,
    decoration: const  BoxDecoration(
      color: Colors.cyan,
    ),
  ),
),
```

---

<br>

<p align="center">
    <img alt="concave" src="https://github.com/shervin-h/curve_clipper/blob/main/assets/concave.png?raw=true" height="500">
</p>

```dart
CustomClipperWidget(
   mode: ClipperMode.concave,
   heightFromOrigin: 180,
   curvePoint: 10,
   child: Container(
     width: double.infinity,
     height: 200,
     decoration: const  BoxDecoration(
        color: Colors.cyan,
     ),
   ),
),
```

- `curvePoint` is the point in the center that has the lowest height
- Its value must be greater than zero and less than `heightFromOrigin`

---

<br>


### by Shervin Hassanzadeh

Contact me at
<br>

  <a href="https://www.linkedin.com/in/shervin-hassanzadeh/">
    <img alt="linkedin" src="https://img.shields.io/badge/linkedin-0077B5.svg?style=flat-squar&logo=linkedin&logoColor=white"/>
  </a>
  <a href="mailto:shervin.hz07@gmail.com">
    <img alt="Email" src="https://img.shields.io/badge/Email-D14836?style=flat-squar&logo=gmail&logoColor=white"/>
  </a>
  <a href="https://t.me/shervin_hz07">
    <img alt="telegram" src="https://img.shields.io/badge/Telegram-2B9FD1?style=flat-squar&logo=telegram&logoColor=white" />
  </a>
  <a href="https://github.com/shervin-h">
    <img alt="github" src="https://img.shields.io/badge/github-121011.svg?style=flat-squar&logo=github&logoColor=white"/>
  </a>
  <a href="https://stackoverflow.com/users/13066224/shervin">
    <img alt="stackoverflow" src="https://img.shields.io/badge/Stackoverflow-ef8236?style=flat-squar&logo=stackoverflow&logoColor=white" />
  </a>

<br>