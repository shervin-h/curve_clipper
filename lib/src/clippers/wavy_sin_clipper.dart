import 'package:flutter/material.dart';

/// ## [WavySinClipper] Class Documentation
///
/// A custom clipper that creates a wavy sin shape.
///
/// This class extends [CustomClipper<Path>] and is used to create a wavy sin
/// clipping path in Flutter framework.
///
/// ## Example
/// ```dart
///   WavySinClipper(heightFromOrigin: 120)
/// ```
class WavySinClipper extends CustomClipper<Path> {
  /// Constructor for the `WavySinClipper` class.
  ///
  /// The `heightFromOrigin` parameter specifies the height from which the wave
  /// should start.
  const WavySinClipper({
    this.heightFromOrigin,
  });

  /// The height from the origin of the wave.
  final double? heightFromOrigin;

  @override
  Path getClip(Size size) {
    double min = (heightFromOrigin == null ||
            heightFromOrigin! < 0.2 * size.height ||
            heightFromOrigin! >= size.height)
        ? (4 / 5) * size.height
        : heightFromOrigin!;

    double middleHeight = min + ((size.height - min) / 2);

    Offset curvePoint1 = Offset((1 / 4) * size.width, size.height);
    Offset centerPoint = Offset((1 / 2) * size.width, middleHeight);
    Offset curvePoint2 = Offset((3 / 4) * size.width, min);
    Offset endPoint = Offset(size.width, middleHeight);

    Path path = Path();
    path.lineTo(0, middleHeight);

    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint.dx,
      centerPoint.dy,
    );

    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
