import 'package:flutter/material.dart';

/// ## [WavyClipper] Class Documentation
///
/// A custom clipper that creates a wavy shape.
///
/// This class extends [CustomClipper<Path>] and is used to create a wavy
/// clipping path in Flutter framework.
///
/// ## Example
/// ```dart
///   WavyClipper(heightFromOrigin: 120)
/// ```
class WavyClipper extends CustomClipper<Path> {
  /// Constructor for the `WavyClipper` class.
  ///
  /// The `heightFromOrigin` parameter specifies the height from which the wave
  /// should start.
  WavyClipper({this.heightFromOrigin});

  /// The height from the origin of the wave.
  ///
  /// If specified, the wave will start from this height. Otherwise, it starts
  /// from 75% of the total height.
  final double? heightFromOrigin;

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    // Calculate the height from the origin relative to the total clipping height
    final fromOrigin = (heightFromOrigin != null &&
            heightFromOrigin! < height &&
            heightFromOrigin! > 0)
        ? heightFromOrigin!
        : 0.75 * height;

    // Create a path using different points
    Path path = Path();
    path.lineTo(0, fromOrigin);

    Offset curvePoint1 = Offset(width * 0.25, height);
    Offset centerPoint = Offset(width * 0.5, fromOrigin);
    Offset curvePoint2 = Offset(width * 0.75, fromOrigin * 0.75);
    Offset endPoint = Offset(width, height);

    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);
    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
